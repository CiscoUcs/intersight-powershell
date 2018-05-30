#Converting CallAPi() to a Virtual function
$file = ".\csharp\swaggerClient\src\intersight\Client\ApiClient.cs"
$content = Get-Content($file)
$content = $content.replace("public Object CallApi","public virtual Object CallApi")
$content | out-file $file


$psFilePath = (".\src\intersight\Model\")
$logFilePath = $Env:TEMP
$psSourcePath = "$logFilePath\Old_PowerShell_Files\"
$csFilePath = (".\csharp\swaggerClient\src\intersight\Model\")
$skipFileList = New-Object 'System.Collections.Generic.List[String]'
$skipFileList.Add("New-IntersightApiClient.ps1")

function Set-LogFilePath($LogFile)
{
    #Write-Host "Creating log file under directory ${LogFile}"
    $Global:BackUpPath = $psSourcePath
    if([System.IO.File]::Exists($Global:BackUpPath) -eq $false)
    {
        $null = New-Item -Path $Global:BackUpPath -ItemType Directory -Force
    }
    $Global:LogFile = $LogFile + "\IntersightPowerShellSDK.$(Get-Date -Format yyyy-MM-dd.hh-mm-ss).log"
    if([System.IO.File]::Exists($Global:LogFile) -eq $false)
    {
        $null = New-Item -Path $Global:LogFile -ItemType File -Force
    }
    
    Copy-Item -Path ($psFilePath + "*.ps1") -Destination $psSourcePath
}

function Write-Log
{
    [CmdletBinding()]
    param 
    ( 
        [Parameter(ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)]
        [String] $Message
    )
    
    $lineNum = (Get-PSCallStack).ScriptLineNumber[1]
    $Message = "Line: $lineNum - $Message"

    $ErrorActionPreference = 'Stop'

    "Info: $(Get-Date -Format g): $Message" | Out-File $Global:LogFile -Append
    #Write-Host $Message
}
Set-LogFilePath $logFilePath

###############################################################################################################
#System.Nullable processing  -------------------------------->>

$namedSysNullRegex = "\[System.Nullable(?<replacementDataType>.*)\]$"
$sysNullRegex = "\[System.Nullable.*\]$"

Try
{
    #Get all the ps file names.
    $psAllFiles = Get-ChildItem $psFilePath -Filter *.ps1
}
Catch
{
    Write-Log "EXCEPTION: System.Nullable Operation: While getting all .ps1 files under file path: '$(${Error})'"
    Write-Log "Exiting..."
    exit
}
Try
{
    foreach($eachFile in $psAllFiles)
    {
        #skip the .ps1 files which are there in the skip list defined above.
        if($skipFileList.Contains($eachFile.Name))
        {
            continue
        }
        #Get content of each file.
        Write-Log "#######First Operation. Processing file: '$($($eachFile).Name)'"
        $psFileContent = Get-Content ($psFilePath + $eachFile.Name)

        $newLine = ""
        foreach($line in $psFileContent) 
        {
            if ($line -match $namedSysNullRegex)
            {
                Write-Log "Replacing System.Nullable from line: '$($line)'"
                $finalReplacementStr = $Matches.replacementDataType
                $newLine += $line -replace $sysNullRegex, $finalReplacementStr
            }
            else
            {
                $newLine += $line
            }
            $newLine += "`n"
        }
        #$newLine | Set-Content $eachFile
        $newLine | Set-Content ($psFilePath + $eachFile.Name)
    }
}
Catch
{
    Write-Log "EXCEPTION: System.Nullable Operation: : '$(${Error})'"
}


###############################################################################################################
#Parameter processing  -------------------------------->>

$csParamRegex = "this\.(?<csParamName>\w*)\s=\s.*;$"
$ParamDefinitionRegex = "Param\s*\($"
$psParamRegex = "\$\{(?<psParamName>\w*)\},*$"
$lastParamRegex = "\$\{(?<psParamName>\w*)\}$"

Try
{
    $psAllFiles = Get-ChildItem $psFilePath -Filter *.ps1
}
Catch
{
    Write-Log "EXCEPTION: Parameter Processing Operation: While getting all .ps1 files under file path: '$(${Error})'"
    Write-Log "Exiting..."
    exit
}

Try
{
    foreach($eachFile in $psAllFiles)
    {
        #skip the .ps1 files which are there in the skip list defined above.
        if($skipFileList.Contains($eachFile.Name))
        {
            continue
        }
        $newLine = ""
        #Identify the Class Name from the FileName
        if($eachFile.Name -match "^New-(?<clsName>.*).ps1$")
        {
            $clsNameFromFile = $Matches.clsName
        }
        Write-Log "#######Second Operation. Processing file: '$($($eachFile).Name)' and Class: '$($clsNameFromFile)'"
    
        #get cs file from which we have to read the parameters.
        $csFileContent = Get-Content ($csFilePath + $clsNameFromFile + ".cs")
        #define a list to hold parameters from the cs file
        $paramList = New-Object 'System.Collections.Generic.List[String]'
        $misMatchedFileList = New-Object 'System.Collections.Generic.List[String]'
        $misMatchedInputOutputList = New-Object 'System.Collections.Generic.List[String]'
        #Prepare regex string
        $namedConstructorRegex = "public\s$clsNameFromFile\(.*\)$"
        $startCollectingParam = $false

        #Find .cs file constructor parameters
        foreach($line in $csFileContent)
        {
            if($startCollectingParam -eq $false)
            {
                if($line -match $namedConstructorRegex)
                {
                    $startCollectingParam = $true
                    continue
                }
                else
                {
                    continue
                }
            }

            if($line.EndsWith('{'))
            {
                continue #skip this line also
            }
            if($line.EndsWith('}'))
            {
                break #we have added all the parameters in the list
            }

            #if the regex match, add the parameter in the list
            if($line -match $csParamRegex)
            {
                $paramList.Add($Matches.csParamName.Trim('_'))
            }
        }
        Write-Log ">>>>>>>Constructor Parameters: '$($paramList)'"
        Write-Log ">>>>>>>Number of C# parameters: '$($($paramList).Count)'"

        #update the ps file
        $psFileContent = Get-Content ($psFilePath + $eachFile.Name)
        $newObjectRegex = "New-Object\s-TypeName\sintersight\.Model\.$clsNameFromFile\s-ArgumentList\s@\($"

        $startUpdatingInputParam = $false
        $endUpdatingInputParam = $false
        $tempParamDefAndType = ""
        $psInputParamCount = 0
        $tempC = 0

        $startUpdatingParam = $false
        $psParamCount = 0
    

        foreach($line in $psFileContent)
        {
            if($endUpdatingInputParam -eq $false)
            {
                if($startUpdatingInputParam -eq $false)
                {
                    if($line -match $ParamDefinitionRegex)
                    {
                        $startUpdatingInputParam = $true
                        $tempC = 0
                    }

                    $newLine += $line + "`n"
                    continue
                }
                else
                {
                    if ($line.EndsWith(')'))
                    {
                        $newLine += $line + "`n"
                        $endUpdatingInputParam = $true
                        continue
                    }
                    $tempC = $tempC + 1

                    #after 2 lines check if the parameter exists in the param list from .cs file
                    if ($tempC -eq 3)
                    {
                        if($line -match $lastParamRegex)
                        {
                            if($paramList.Contains($Matches.psParamName))
                            {
                                $newLine += $tempParamDefAndType
                                $newLine += $line + "`n"
                                $psInputParamCount = $psInputParamCount + 1

                                $endUpdatingInputParam = $true
                                continue
                            }
                            else
                            {
                                $newLine = $newLine.TrimEnd("`n")
                                $newLine = $newLine.TrimEnd(',')
                                $newLine += "`n" 
                                $endUpdatingInputParam = $true
                                continue
                            }
                        }
                        elseif($line -match $psParamRegex)
                        {
                            if($paramList.Contains($Matches.psParamName))
                            {
                                $newLine += $tempParamDefAndType
                                $newLine += $line + "`n"
                                $psInputParamCount = $psInputParamCount + 1

                                $tempParamDefAndType = ""
                                $tempC = 0
                                continue
                            }
                            else
                            {
                                #$startUpdatingInputParam = $false
                                $tempParamDefAndType = ""
                                $tempC = 0
                                continue
                            }
                        }
                    }

                    #add two lines in temp variable
                    $tempParamDefAndType += $line + "`n"
                    continue
                }
            }

            if($startUpdatingParam -eq $false)
            {
                if($line -match $newObjectRegex)
                {
                    $startUpdatingParam = $true
                    $newLine += $line + "`n"
                    continue
                }
                else
                {
                    $newLine += $line + "`n"
                    continue
                }
            }

            #To take care extra comma in parameters.
            if($line.EndsWith(')'))
            {
                $newLine = $newLine.TrimEnd("`n")
                $newLine = $newLine.TrimEnd(',')
                $newLine += "`n" + $line + "`n"
                continue #we have updated all the parameters for the file
            }

            #if the regex match, add the parameter in the list
            if($line -match $psParamRegex)
            {
                if($paramList.Contains($Matches.psParamName))
                {
                    $newLine += $line + "`n"
                    $psParamCount = $psParamCount + 1
                    continue
                }
                else
                {
                    continue
                }
            
            }
            $newLine += $line + "`n"
        }
        Write-Log ">>>>>>>Number of powershell file parameter(Input): $($psInputParamCount)"
        Write-Log ">>>>>>>Number of powershell file parameter: $($psParamCount)"

        if($psParamCount -ne $psInputParamCount)
        {
            Write-Warning "???????Input and Output Parameter Count Mismatch!!! Please check..."
            Write-Log "???????Input and Output Parameter Count Mismatch!!! Please check..."
            $misMatchedInputOutputList.Add($eachFile.Name)
        }

        if($psParamCount -ne $paramList.Count)
        {
            Write-Warning "???????Parameter Count Mismatch!!! Please check..."
            Write-Log "???????Parameter Count Mismatch!!! Please check..."
            $misMatchedFileList.Add($eachFile.Name)
        }

        #reset the counter for next file
        $psParamCount = 0
        #update the file
        $newLine | Set-Content ($psFilePath + $eachFile.Name)
    }
}
Catch
{
    Write-Log "EXCEPTION: Parameter Processing Operation: '$(${Error})'"
    Write-Log "Exiting..."
    exit
}
if($misMatchedFileList.Count)
{
    Write-Warning "Parameter Count Mismatch Affected Files List: '$($misMatchedFileList)'"
}
Write-Log "???????Parameter Count Mismatch Affected Files List: '$($misMatchedFileList)'"
if($misMatchedInputOutputList.Count)
{
    Write-Warning "Input/Output Parameter Count Mismatch Affected Files List: '$($misMatchedInputOutputList)'"
}
Write-Log "???????Input/Output Parameter Count Mismatch Affected Files List: '$($misMatchedInputOutputList)'"


###############################################################################################################
#Empty string checks insertion processing  -------------------------------->>

$identifyParamRegex = "\[Parameter\(.*\)\]$"
$identifyStringTypeRegex = "\[String\]$"
$psParamRegex = "\$\{(?<psParamName>\w*)\},*$"

Try
{
    $psAllFiles = Get-ChildItem $psFilePath -Filter *.ps1
}
Catch
{
    Write-Log "EXCEPTION: Parameter Processing Operation: While getting all .ps1 files under file path: '$(${Error})'"
    Write-Log "Exiting..."
    exit
}

Try
{
    foreach($eachFile in $psAllFiles)
    {
        #skip the .ps1 files which are there in the skip list defined above.
        if($skipFileList.Contains($eachFile.Name))
        {
            continue
        }
        Write-Log "#######Third Operation. Processing file: '$($($eachFile).Name)'"
        if($eachFile.Name -match "^New-(?<clsName>.*).ps1$")
        {
            $clsNameFromFile = $Matches.clsName
        }

        $strParamList = New-Object 'System.Collections.Generic.List[String]'
        $psFileContent = Get-Content ($psFilePath + $eachFile.Name)
        $paramIdentified = $false
        $paramStrTypeIdentified = $false
    
        #Prepare String type parameter list
        foreach($line in $psFileContent)
        {
            if($line -match $identifyParamRegex)
            {
                $paramIdentified = $true
                continue
            }

            if($paramIdentified -eq $true -and $line -match $identifyStringTypeRegex)
            {
                $paramStrTypeIdentified = $true
                continue
            }

            if($paramIdentified -eq $true -and $paramStrTypeIdentified -eq $true)
            {
                if($line -match $psParamRegex)
                {
                    $strParamList.Add($Matches.psParamName)
                    #Write-Log $Matches.psParamName
                }
                else
                {
                    Write-Warning "???????Parameter syntax mismatch for: '$($line)'"
                    Write-Log "???????Parameter syntax mismatch for: '$($line)'"
                }
                $paramIdentified = $false
                $paramStrTypeIdentified = $false
            }
        }
        Write-Log ">>>>>>>Parameters having DataType as String: '$($strParamList)'"
        Write-Log "Number of parameters: '$($($strParamList).Count)'"

        #Update the code for String type parameter
        $psFileContent = Get-Content ($psFilePath + $eachFile.Name)
        $newObjectRegex = "(?<tabs>\s*)New-Object\s-TypeName\sintersight\.Model\.$clsNameFromFile\s-ArgumentList\s@\($"
        $doNotProceedRegex = "(?<tabs>\s*)\`$temp\s=\sNew-Object\s-TypeName\sintersight\.Model\.$clsNameFromFile\s-ArgumentList\s@\($"
        $doNotModify = $false
        $newLine = ""
        $addTempVarCode = $false
        $addStrValidationCode = $false
        $tabs = ""
        $tab = ""

        foreach($line in $psFileContent)
        {
            if($addTempVarCode -eq $false)
            {
                if($line -match $doNotProceedRegex)
                {
                    Write-Log "File is already modified. Skipping..."
                    $doNotModify = $true
                    break
                }
                elseif($line -match $newObjectRegex)
                {
                    $addTempVarCode = $true
                    $tabs = $Matches.tabs
                    if (![String]::IsNullOrEmpty($tabs))
                    {
                        $tab = $tabs.Substring(0, ($tabs.Length)/2)
                    }

                    $line = $line.Trim('\t')
                    $line = $line.Trim(' ')
                    $newLine += $tabs + "`$temp = " + $line + "`n"
                    continue
                }
                else
                {
                    $newLine += $line + "`n"
                    continue
                }
            }

            if($addStrValidationCode -eq $false)
            {
                if($line.EndsWith(')'))
                {
                    $addStrValidationCode = $true
                    $newLine += $line + "`n"
                    continue
                }
            }

            #Add String validation statements
            if($addStrValidationCode -eq $true)
            {
                foreach($strParam in $strParamList)
                {
                    $newLine += "$tabs" + "if (`$temp.$strParam -eq [String]::Empty)" + "`n"
                    $newLine += "$tabs" + "{" + "`n"
                    $newLine += ($tab*3) + "`$temp.$strParam = [NullString]::Value" + "`n"
                    $newLine += "$tabs" + "}" + "`n"
                }
                $newLine += "`n" + "$tabs" + "`$temp" + "`n"
                $newLine += $line + "`n"
                #Code has been added, un-set variable "addStrValidationCode"
                $addStrValidationCode = $false
                continue
            }
            $newLine += $line + "`n"
        }
        #update the file
        if($doNotModify -eq $false)
        {
            $newLine | Set-Content ($psFilePath + $eachFile.Name)
        }
    }
}
Catch
{
    Write-Log "EXCEPTION: Empty String Check Insertion Operation: '$(${Error})'"
    Write-Log "Exiting..."
    exit
}
Remove-Item -Recurse -Path $psSourcePath -Force -ErrorAction Ignore
#Running the script for generating the .dll
.\Setup.ps1
