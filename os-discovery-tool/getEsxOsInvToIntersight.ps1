<#

.SYNOPSIS
ODT stands for OS Discovery Toolset.
This is a simple ODT script to Discover ESX OS Inventory and TAG Servers managed by Cisco Intersight.
It can be run via the Windows Task Scheduler to ensure regular refresh and is powered by Windows Powershell 4.0+

.DESCRIPTION
This tool needs to have generateSecureCredentials.ps1 to be run beforehand.

You need the following files generated:
1. Encrypted vCenter Credentials in a PSCredential XML file
2. Encrypted Intersight Secret Key file

It also needs the path to a config file (discovery_config_esx.json).

.EXAMPLE
>  .\getEsxOsInvToIntersight.ps1 $env:USERPROFILE\Documents\discovery_config_esx.json

.NOTES
This script can be run via the Windows Task scheduler OR SCOM

.LINK
https://github.com/CiscoUcs/intersight-powershell

#>
[CmdletBinding()]
Param (
    [Parameter(Mandatory=$true, HelpMessage="Enter the full path of the discovery file (.json)")]
    [string]$ConfigFile
)

$mypath = (Resolve-Path .)
$scriptPath = Split-Path -Path $MyInvocation.MyCommand.Path -Parent

try {
    $modulePath = Resolve-Path "$scriptPath\..\src\intersight\intersight.psd1"
    Import-Module $modulePath -Verbose:$false
} catch {
    throw "Dependent Libraries not installed. Please check that the Cisco Intersight Powershell SDK package is installed, $_"
    exit
}

try {
    Import-Module VMware.VimAutomation.Core -Verbose:$false
} catch [System.Exception] {
    throw "Dependent Libraries not installed. Please check that the VMware.PowerCLI module is installed, $_"
    exit
}

#Setup Handler for Certificate verification override
Add-type @"
    using System.Net;
    using System.Security.Cryptography.X509Certificates;
    public class TrustAllCertsPolicy : ICertificatePolicy {
        public bool CheckValidationResult(
            ServicePoint srvPoint, X509Certificate certificate,
            WebRequest request, int certificateProblem) {
            return true;
        }
    }
"@
[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy

Set-Location -Path $mypath
$datestring = (get-date).toUniversalTime().ToFileTimeUtc()

Function WriteLog
{
    Param ([object]$env, [string]$loglevel, [string]$logstring)
    $logfile = $env.config.logfile_path+"\discovery_"+$datestring+".log"
	$stamp=(get-date)
	$logline = "["+$stamp+"]"+$loglevel+"::"+$logstring
	Add-content $logfile -value $logline
}

Function GetEnvironment
{
    Return (Get-Content -Raw -Path (Resolve-Path $ConfigFile) | ConvertFrom-Json)
}

Function StartLogging {
    Param([object]$env)
    $outfile = $env.config.logfile_path+"\discovery_"+$datestring+".out"
    Start-transcript -append -path $outfile
}

Function ConnectvCenter {
    Param([object]$env)
    $vCenter_creds_file_path=$env.config.vCenter_creds_file
    $vcenterCredentials = Import-Clixml -Path $vCenter_creds_file_path
    try {
        Connect-ViServer -Server $env.config.vCenter -Credential $vcenterCredentials
    } catch [System.Exception] {
        Write-Error "Could not connect to vCenter: $($env.config.vCenter), aborting..."
        WriteLog $env "INFO" "Could not connect to vCenter: $($env.config.vCenter), aborting..."
        StopLogging
        exit
    }
}

Function GetVMHosts {
    Param([object]$env)
    $filter = $env.config.location_filter
    Return (Get-VMHost -Location $filter)
}

Function GetVMHostSerial {
    Param([object]$esxcli)
    Return (($esxcli.hardware.platform.get.Invoke() | select SerialNumber).SerialNumber)
}

Function GetComputeType {
    Param([object]$esxcli)
    $model = ($esxcli.hardware.platform.get.Invoke() | select ProductName).ProductName
    if($model -like "*UCSB*") {
        Return "blade"
    }
    else {
        if($model -like "*UCSC*" -or $model -like "*HX*") {
            Return "rack"
        }
        else {
            Return "unknown"
        }
    }
}

Function GetISO8601Time {
	 Return ((Get-Date).ToUniversalTime().ToString( "yyyy-MM-ddTHH:mm:ss.fffZ" ))
}

Function GetTAGPrefix {
	Return "intersight.server."
}

#Os Details
Function GetOSDetails{
    Param([object]$env, [object]$VMHost, [object]$esxcli)
    Write-Verbose "GetOSDetails: $VMHost"
    $updateTS = GetISO8601Time
    $prefix = GetTAGPrefix
    $osInvCollection = New-Object System.Collections.ArrayList
    $osdetails = $esxcli.system.version.Get.Invoke()
    $osInv = New-Object System.Object
    $osInv | Add-Member -type NoteProperty -name Key -Value $prefix"os.updateTimestamp"
    $osInv | Add-Member -type NoteProperty -name Value -Value $updateTS
    $count = $osInvCollection.Add($osInv)
    Clear-Variable -Name osInv
    $vendor, $osname = $osdetails.Product.Split(' ')
    $osInv = New-Object System.Object
    $osInv | Add-Member -type NoteProperty -name Key -Value $prefix"os.vendor"
    $osInv | Add-Member -type NoteProperty -name Value -Value $osdetails.Product
    $count = $osInvCollection.Add($osInv)
    Clear-Variable -Name osInv
    $osInv = New-Object System.Object
    $osInv | Add-Member -type NoteProperty -name Key -Value $prefix"os.name"
    $osInv | Add-Member -type NoteProperty -name Value -Value $osname
    $count = $osInvCollection.Add($osInv)
    Clear-Variable -Name osInv
    $osInv = New-Object System.Object
    $osInv | Add-Member -type NoteProperty -name Key -Value $prefix"os.arch"
    $osInv | Add-Member -type NoteProperty -name Value -Value "x86_64"
    $count = $osInvCollection.Add($osInv)
    Clear-Variable -Name osInv
    $osInv = New-Object System.Object
    $osInv | Add-Member -type NoteProperty -name Key -Value $prefix"os.type"
    $osInv | Add-Member -type NoteProperty -name Value -Value "VMkernel"
    $count = $osInvCollection.Add($osInv)
    Clear-Variable -Name osInv
    $osInv = New-Object System.Object
    $osInv | Add-Member -type NoteProperty -name Key -Value $prefix"os.kernelVersionString"
    $osInv | Add-Member -type NoteProperty -name Value -Value $osdetails.Version
    $count = $osInvCollection.Add($osInv)
    Clear-Variable -Name osInv
    $osInv = New-Object System.Object
    $osInv | Add-Member -type NoteProperty -name Key -Value $prefix"os.releaseVersionString"
    $osInv | Add-Member -type NoteProperty -name Value -Value $osdetails.Build
    $count = $osInvCollection.Add($osInv)
    Clear-Variable -Name osInv
    $osInv = New-Object System.Object
    $osInv | Add-Member -type NoteProperty -name Key -Value $prefix"os.updateVersionString"

    if($osdetails.Update -ne "0") {
        $updatestring = "U"+$osdetails.Update
        $osInv | Add-Member -type NoteProperty -name Value -Value $osdetails.Update
    }
    else {
        $osInv | Add-Member -type NoteProperty -name Value -Value ""
    }
    $count = $osInvCollection.Add($osInv)
    Return $osInvCollection
}

#Driver details
Function GetDriverDetails {
    Param([object]$env, [object]$VMHost, [object]$esxcli)
    Write-Verbose "GetDriverDetails: $VMHost"
    $prefix = GetTAGPrefix
    $osInvCollection = New-Object System.Collections.ArrayList
    $driverList = New-Object Collections.Generic.List[string]
    $devcount = 0

    $niclist = $esxcli.network.nic.list.Invoke()
    $hbalist = $esxcli.storage.core.adapter.list.Invoke()

    foreach($nic in $niclist) {
        if(!$driverList.Contains($nic.Driver)) {
            $driverList.Add($nic.Driver)
            $key = $prefix+"os.driver."+$devcount+".name"
            $osInv = New-Object System.Object
            $osInv | Add-Member -type NoteProperty -name Key -Value $key
            $osInv | Add-Member -type NoteProperty -name Value -Value $nic.Driver
            $count = $osInvCollection.Add($osInv)
            Clear-Variable -Name osInv
            $osInv = New-Object System.Object
            $key = $prefix+"os.driver."+$devcount+".description"
            $osInv | Add-Member -type NoteProperty -name Key -Value $key
            $osInv | Add-Member -type NoteProperty -name Value -Value $nic.Description
            $count = $osInvCollection.Add($osInv)
            Clear-Variable -Name osInv
            $osInv = New-Object System.Object
            $key = $prefix+"os.driver."+$devcount+".version"
            $osInv | Add-Member -type NoteProperty -name Key -Value $key
            if($nic.Driver -eq "enic") {
                $driverVersion = $esxcli.system.module.get.Invoke(@{module=$nic.Driver}).Version.split(",")[0].split(" ")[1]
            }
            else
            {
                $driverVersion = $esxcli.system.module.get.Invoke(@{module=$nic.Driver}).Version
            }
            $osInv | Add-Member -type NoteProperty -name Value -Value $driverVersion
            $count = $osInvCollection.Add($osInv)
            $devcount = $devcount + 1
        }
    }

    foreach($hba in $hbalist) {
        if(!$driverList.Contains($hba.Driver) -and $hba.Driver -notlike "*usb*") {
            $driverList.Add($hba.Driver)
            $key = $prefix+"os.driver."+$devcount+".name"
            $osInv = New-Object System.Object
            $osInv | Add-Member -type NoteProperty -name Key -Value $key
            $osInv | Add-Member -type NoteProperty -name Value -Value $hba.Driver
            $count = $osInvCollection.Add($osInv)
            Clear-Variable -Name osInv
            $osInv = New-Object System.Object
            $key = $prefix+"os.driver."+$devcount+".description"
            $osInv | Add-Member -type NoteProperty -name Key -Value $key
            $osInv | Add-Member -type NoteProperty -name Value -Value $hba.Description
            $count = $osInvCollection.Add($osInv)
            Clear-Variable -Name osInv
            $osInv = New-Object System.Object
            $key = $prefix+"os.driver."+$devcount+".version"
            $osInv | Add-Member -type NoteProperty -name Key -Value $key
            if($hba.Driver -eq "fnic" -or $hba.Driver -eq "megaraid_sas" -or $hba.Driver -eq "ahci") {
                $driverVersion = $esxcli.system.module.get.Invoke(@{module=$hba.Driver}).Version.split(",")[0].split(" ")[1]
            }
            else
            {
                $driverVersion = $esxcli.system.module.get.Invoke(@{module=$hba.Driver}).Version
            }
            $osInv | Add-Member -type NoteProperty -name Value -Value $driverVersion
            $count = $osInvCollection.Add($osInv)
            $devcount = $devcount + 1
        }
    }
    Return $OsInvCollection
}

Function ProcessHostOsInventory {
    Param([object]$env, [object]$VMHost, [object]$esxcli)

    WriteLog $env "INFO" "[$VMHost]:Retrieving OS Inventory..."
    $osInvCollection = GetOSDetails $env $VMHost $esxcli

    WriteLog $env "INFO" "[$VMHost]:Retrieving Device Driver Inventory..."
    $driverInvCollection = GetDriverDetails $env $VMHost $esxcli

    $combinedCollection = New-Object System.Collections.ArrayList
    $combinedCollection += $osInvCollection
    $combinedCollection += $driverInvCollection

    $osInvJson = ConvertTo-Json -Depth 2 @{ "Tags"=foreach ($item in $combinedCollection) {@{Key=$item.Key; Value=$item.Value}}}

    WriteLog $env "INFO" "Formulated Tags for OS and Driver Inventory: -->"
    WriteLog $env "INFO" $osInvJson

    Return $combinedCollection
}

Function ConnectIntersight {
    Param([object]$env)
    Write-Verbose "Connecting to Cisco Intersight URL with API Keys: $($env.config.intersight_url)"
    WriteLog $env "INFO" "Connecting to Cisco Intersight(TM) URL with API Keys: $($env.config.intersight_url)"
    $secret_file_path = $env.config.intersight_secret_file
    WriteLog $env "INFO" $secret_file_path
    WriteLog $env "INFO" $env.config.intersight_api_key
    try {
        New-IntersightApiClient $env.config.intersight_url $secret_file_path $env.config.intersight_api_key
    } catch [System.Exception] {
        Write-Error "Connection to Cisco Intersight(TM) failed, Aborting..."
        WriteLog $env "ERROR" "Connection to Cisco Intersight(TM) failed, Aborting..."
        StopLogging
        exit
    }
}

Function LookupIntersightServerBySerial {
    Param([string]$server_serial, [string]$computeType)
    $obj = $null
    try {
        if($computeType -eq "blade") {
            $obj = Invoke-ComputeBladeApiComputeBladesGet $false $null $null $null "Serial eq $server_serial"
        }
        else
        {
            if($computeType -eq "rack") {
                $obj = Invoke-ComputeRackUnitApiComputeRackUnitsGet $false $null $null $null "Serial eq $server_serial"
            }
            else
            {
                Write-Warning "Unknown Host: $server_serial, skipping..."
            }
        }
    } catch [System.Exception]{
        Write-Warning "API GET failed for host $server_serial, $_"
        WriteLog $env "ERROR" "API GET failed for host $server_serial, $_"
    }
    if($obj) {
        Write-Verbose "Intersight API GET succeeded for host $server_serial"
    }
    Return $obj
}

#DiffServerTAGS looks accounts for missing TAGs and TAG value differences. It ignores the updateTimeStamp TAG
Function DiffServerTAGs {
    Param ([object]$oldTAGs, [object]$newTAGS)
    $changed = $false
    Write-Verbose "Computing changes..."
    $oldIntersightTags = $oldTags | where-object {$_.Key -like "intersight.server.os.*"}
    $newIntersightTags = $newTags | where-object {$_.Key -like "intersight.server.os.*"}
    if(($newIntersightTags | measure-object).Count -ne ($oldIntersightTags | measure-object).Count) {
        $changed = $true
    }
    else
    {
        foreach($MoTag in $newIntersightTags) {
            if($MoTag.Key -ne "intersight.server.os.updateTimeStamp") {
                $oldMoTag = $oldIntersightTags | where-object {$_.key -eq $MoTag.key}
                if($oldMoTag -eq $null -or $oldMoTag.Value -ne $MoTag.Value) {
                    $changed = $true
                    break
                }
            }
        }
    }
    Return $changed
}

Function PatchIntersightServerBySerial {
    Param ([object]$env, [string]$server_serial, [string]$computeType, [object]$Server, [object]$osInvCollection)

    WriteLog $env "INFO" "Sending OS and Driver Inventory..."

    $list =  New-Object "System.Collections.Generic.List[intersight.Model.MoTag]"

    #4. Create list from TAGs preserving non-JET TAGs
    $tags = $Server.Results[0].Tags
    $changed = DiffServerTAGs $tags $osInvCollection

    if ($changed) {
        foreach($tag in $tags) {
            if($tag.Key -notlike "intersight.server.*") {
                $mo = New-MoTag -Key $tag.Key -Value $tag.Value
                $list.Add($mo)
            }
        }

        foreach ($item in $osInvCollection) {
            $mo = New-MoTag -Key $item.Key -Value $item.Value
            $list.Add($mo)
        }

        #5. Prep API object for PATCH
        try {
            #6. Call patch API
            Write-Verbose "Changes detected for Server: [$server_serial], PATCHing to Intersight..."
	        if($computeType -eq "blade") {
                $compute = New-ComputeBlade
                $compute.Tags = $list
                Invoke-ComputeBladeApiComputeBladesMoidPatch $Server.Results[0].Moid $compute
            }
            else
            {
                if($computeType -eq "rack") {
                    $compute = New-ComputeRackUnit
                    $compute.Tags = $list
                    Invoke-ComputeRackUnitApiComputeRackUnitsMoidPatch $Server.Results[0].Moid $compute
                }
                else
                {
                    Write-Warning "Unknown Host: $server_serial, skipping..."
                }
            }
        } catch [System.Exception]{
            WriteLog $env "ERROR" "API PATCH failed for host $server_serial, $_"
            Write-Error "ERROR: API PATCH failed for host $server_serial, $_"
        }
    }
    else
    {
        Write-Verbose "No changes detected for Server: [$server_serial], skipping..."
        WriteLog $env "INFO" "No changes detected for Server: [$server_serial], skipping..."
    }
}

Function StopLogging {
    Stop-transcript
}

Function ValidateEnv {
    Param ([object] $env)
    try {
        if(!(Test-Connection $env.config.vCenter -Quiet)) {
            throw "[ERROR]: vCenter not reachable (please use a valid hostname or IP address that's reachable)! Cannot Proceed..."
            exit
        }

        if($env.config.location_filter -eq "" -or $env.config.location_filter -eq $null) {
            throw "[ERROR]: Filter cannot be empty (try *)! Cannot Proceed..."
            exit
        }

        if($env.config.intersight_url -eq "" -or $env.config.intersight_url -eq $null) {
            throw "[ERROR]: Intersight URL cannot be empty (try https://intersight.com/api/v1)! Cannot Proceed..."
            exit
        }

        if($env.config.intersight_api_key -eq "" -or $env.config.intersight_api_key -eq $null) {
            throw "[ERROR]: Intersight API key cannot be empty! Cannot Proceed..."
            exit
        }

        $vCenter_creds_file_path=$env.config.vCenter_creds_file
        $secret_file_path = $env.config.intersight_secret_file
        if(!(Test-Path -PathType Leaf $vCenter_creds_file_path) -or !(Test-Path -PathType Leaf $secret_file_path) -or !(Test-Path -PathType Container $env.config.logfile_path)) {
            throw "[ERROR]: vCenter_creds_file, intersight_secret_file, and logfile_path must exist! Cannot Proceed..."
            exit
        }
        Write-Verbose "[INFO]: Configurations in {$configfile}, validation succeeded!"
    }
    catch [System.Exception] {
        throw "[ERROR]: Discovery config validation failed, please ensure credential files and log files exist: $_"
        exit
    }
}

# doDiscovery does ODT Discovery for HCL
Function DoDiscovery {
    Write-Verbose "[INFO]: ODT script for OS Discovery started..."
    $env = GetEnvironment
    ValidateEnv $env
    StartLogging $env
    WriteLog $env "[INFO]" "JET script for OS Discovery started..."
    ConnectvCenter $env
    ConnectIntersight $env
    $VMHosts = GetVMHosts $env
    foreach ($VMHost in $VMHosts) {
        WriteLog $env "INFO" "[$VMHost]: Retrieving OS Inventory..."
        Write-Verbose "------------------------------------------------------------------------------------"
        Write-Verbose "Processing {$VMHost}"
        try {
            $esxcli = ($VMHost | Get-EsxCli -V2)
        }
        catch {
            Write-Error "[ERROR]: Server Unreachable {$VMHost), $_"
            continue
        }
        $server_serial = GetVMHostSerial $esxcli

        $computeType = GetComputeType $esxcli
        $obj = LookupIntersightServerBySerial $server_serial $computeType
        if($obj) {
            if(($obj.Results | Measure-Object).Count -gt 0)
            {
                $osInvCollection = ProcessHostOsInventory $env $VMHost $esxcli
                $ServerMoid = $obj.Results[0].Moid
                Write-Verbose "Server MOID: $ServerMoid"
                PatchIntersightServerBySerial $env $server_serial $computeType $obj $osInvCollection
                Write-Verbose "Processing {$VMHost}: $server_serial complete."
            }
            else
            {
                Write-Warning "No results for {$VMHost}:$server_serial from intersight, skipping..."
                WriteLog $env "WARNING" "No results for {$VMHost}:$server_serial from intersight"
            }
        }
        else
        {
            Write-Warning "No results for {$VMHost}:$sever_serial from intersight, skipping..."
            WriteLog $env "WARNING" "No results for {$VMHost}:$sever_serial from intersight"
        }

        Write-Verbose "===================================================================================="
    }
    WriteLog $env "[INFO]" "ODT Discovery complete!"
    StopLogging
}

# Startup the ODT
DoDiscovery
