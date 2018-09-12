## **ODT (OS Discovery Toolset) scripts**

## Introduction
#### *This toolset enables Cisco Intersight account holders to push server OS inventory to Intersight in order to evaluate the server's HCL validity as it pertains to http://ucshcltool.cisco.com*
---
## File list
```Powershell
 PS $env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool> dir

    Directory: $env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool


	Mode                LastWriteTime         Length Name
	----                -------------         ------ ----
	-a----        7/13/2018  10:01 AM            195 discovery_config_esx.json
	-a----        7/17/2018   2:23 PM           2157 generateSecureCredentials.ps1
	-a----        7/17/2018   6:29 PM          19789 getEsxOsInvToIntersight.ps1
	-a----        7/17/2018  12:21 PM          10807 README.md

```
---
## Setup Steps
---
  ### I. Install dependent components
  1. A Windows machine (Virtual/Physical) with access to servers on your on-prem network. Check that **Windows Powershell 4.0+** is installed (Should be available on most Windows OS flavors)
  2. **Intersight Powershell SDK** (Clone this repository, as described below and follow build instructions from: https://github.com/CiscoUcs/intersight-powershell).
     We recommend using git for windows and the GitBash commandline downloadable from: https://git-scm.com/downloads
	 ```Bash
	 user@windows-host MINGW64 ~
	 $ git clone https://github.com/CiscoUcs/intersight-powershell.git
	 ```

  3. For vSphere install the **vSphere PowerCLI package** from:
     https://my.vmware.com/web/vmware/details?downloadGroup=PCLI650R1&productId=614
  ---

  ### II. Ensure prerequisites
  1. This toolset requires that the **server OS is managed** i.e., managed by a vCenter in case of ESX.
  2. **Claim your servers.** Ensure that the server is claimed in Cisco Intersight. This toolset will validate only claimed servers by serial numbers and their connectivity to Intersight.
  3. **Generate API keys** (public and private) with your user account from the Cisco Intersight GUI and use them as described in the next section.
  ---
  ### III. Setup configurations
  Edit discovery_config_esx.json to include details as described below. Refer to the comments for additional help. NOTE: comments are not supported in JSON; please don't leave comments in your configuration files)
  ```Powershell
   PS $env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool> cat ..\..\..\Documents\discovery_config_esx.json
	{
		"config": {
				# vCenter hostname or IP address
				"vCenter": "myvcenter.example.com",
				# location of PSCredential file containing vCenter credentials.
				# Notice that this is a relative path from the user's profile
				"vCenter_creds_file": "Documents\\vCenter-creds.xml",
				# Location filter for vCenter location in the hierarchy
				"location_filter": "my_location",
				# Intersight URL for API calls
				"intersight_url": "https://intersight.com/api/v1",
				# Public API key for intersight API
				"intersight_api_key": "5b4cff386d3376393452476f/5b4cfead6d33763934524747/5b4d0c156d33763934525341",
				# Location of intersight Secret API key file on local filesystem.
				# Notice that this is a relative path from the user's profile.
				"intersight_secret_file": "Downloads\\secret.pem",
				# Location of log file. Notice that this is an absolute path.
				"logfile_path": "C:\\ProgramData\\Cisco\\SystemDiscovery"
		}
	}
   ```
  ---
  ### IV. Run toolset
  #### i. generateSecureCredentials.ps1
  ```Powershell
   PS $env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool> get-help .\generateSecureCredentials.ps1

	NAME
		$env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool\generateSecureCredentials.ps1

	SYNOPSIS
		ODT stands for OS Discovery Toolset
		This is a simple ODT script to encrypt Cisco Intersight and VMware vCenter credentials powered by Windows Powershell 4.0+


	SYNTAX
		$env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool\generateSecureCredentials.ps1 [-platform] <String> [<CommonParameters>]


	DESCRIPTION
		This tool needs the following inputs:

		For the ESX platform:
		1. vCenter Credentials
		2. Location of encrypted Cisco Intersight Secret key

		For the Windows platform:
		1. Powershell Session Credentials for Active Directory Lookups
		2. Location of encrypted Cisco Intersight Secret key


	RELATED LINKS
		https://github.com/CiscoUcs/intersight-powershell

	REMARKS
		To see the examples, type: "get-help $env:USERPROFILE\Downloads\intersight-powershell\generateSecureCredentials.ps1 -examples".
		For more information, type: "get-help $env:USERPROFILE\Downloads\intersight-powershell\generateSecureCredentials.ps1 -detailed".
		For technical information, type: "get-help $env:USERPROFILE\Downloads\intersight-powershell\generateSecureCredentials.ps1 -full".
		For online help, type: "get-help $env:USERPROFILE\Downloads\intersight-powershell\generateSecureCredentials.ps1 -online"
  ```

  #### Example run of generateSecureCredentials
  ```Powershell
   PS $env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool> .\generateSecureCredentials.ps1 -Platform esx -ConfigFile -ConfigFile $env:USERPROFILE\Documents\discovery_config_esx.json
	Encrypt Cisco Intersight Private Credentials in Windows Powershell 4.0+
	===========================================================================
	Enter the Full Path of the Intersight Private Key File (.pem): C:\full\path\to\secret.pem
	Please enter vCenter Credentials:

	cmdlet Get-Credential at command pipeline position 1
	Supply values for the following parameters:
	Credential
	Credentials generated and encrypted!
	____________________________________
  ```
  #### ii. getEsxOsInvToIntersight.ps1
  ```Powershell
   PS $env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool> get-help .\getEsxOsInvToIntersight.ps1

	NAME
		$env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool\getEsxOsInvToIntersight.ps1

	SYNOPSIS
		ODT stands for OS Discovery Toolset.
		This is a simple ODT script to Discover ESX OS Inventory and TAG Servers managed by Cisco Intersight.
		It can be run via the Windows Task Scheduler to ensure regular refresh and is powered by Windows Powershell 4.0+


	SYNTAX
		$env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool\getEsxOsInvToIntersight.ps1 [-configfile] <String> [<CommonParameters>]


	DESCRIPTION
		This tool needs to have generateSecureCredentials.ps1 to be run beforehand.

		You need the following files generated:
		1. Path to a config file (discovery_config_esx.json)
		2. Encrypted vCenter Credentials in a PSCredential XML file
		3. Encrypted Intersight Secret Key file


	RELATED LINKS
		https://github.com/CiscoUcs/intersight-powershell

	REMARKS
		To see the examples, type: "get-help $env:USERPROFILE\Downloads\intersight-powershell\getEsxOsInvToIntersight.ps1 -examples".
		For more information, type: "get-help $env:USERPROFILE\Downloads\intersight-powershell\getEsxOsInvToIntersight.ps1 -detailed".
		For technical information, type: "get-help $env:USERPROFILE\Downloads\intersight-powershell\getEsxOsInvToIntersight.ps1 -full".
		For online help, type: "get-help $env:USERPROFILE\Downloads\intersight-powershell\getEsxOsInvToIntersight.ps1 -online"
  ```
  #### Example run of getEsxOsInvToIntersight
  ```Powershell
	PS $env:USERPROFILE\Downloads\intersight-powershell\os-discovery-tool> .\getEsxOsInvToIntersight.ps1 -configfile $env:USERPROFILE\Documents\discovery_config_esx.json -Verbose

	[INFO]: JET script for OS Discovery started...
	[INFO]: Configurations in {$env:USERPROFILE\Documents\discovery_config_esx.json}, validation succeeded!
	Transcript started, output file is C:\ProgramData\Cisco\SystemDiscovery\discovery_131768894634013608.out

	Name                           Port  User
	----                           ----  ----
	myvcenter.example.com          443   VSPHERE.LOCAL\Administrator
	VERBOSE: Connecting to Cisco Intersight URL with API Keys:  https://intersight.com/api/v1
	VERBOSE: ------------------------------------------------------------------------------------
	VERBOSE: Processing {my-esx-1.example.com} :
	VERBOSE: Intersight API GET succeeded for host FCH16277YXW
	VERBOSE: GetOSDetails: my-esx-1.example.com
	VERBOSE: GetDriverDetails: my-esx-1.example.com
	VERBOSE: Server MOID:  5b56cd3a366c6b3976923be4
	VERBOSE: Computing changes...
	VERBOSE: Changes detected for Server: [FCH16277YXW], PATCHing to Intersight...
	VERBOSE: Processing {my-esx-1.example.com} : FCH16277YXW complete.
	VERBOSE: ====================================================================================
	VERBOSE: ------------------------------------------------------------------------------------
	VERBOSE: Processing {my-esx-2.example.com} : FCH16277YXW
	VERBOSE: Intersight API GET succeeded for host FCH17247F8E
	VERBOSE: GetOSDetails: my-esx-2.example.com
	VERBOSE: GetDriverDetails: my-esx-2.example.com
	VERBOSE: Server MOID:  5b56cd3a366c6b3976923be7
	VERBOSE: Computing changes...
	VERBOSE: Changes detected for Server: [FCH16277YXW], PATCHing to Intersight...
	VERBOSE: Processing {my-esx-2.example.com} : FCH17247F8E complete.
	VERBOSE: ====================================================================================
	VERBOSE: ------------------------------------------------------------------------------------
	VERBOSE: Processing {my-esx-3.example.com} : FCH17247F8E
	VERBOSE: Intersight API GET succeeded for host FLM2042P049
	VERBOSE: GetOSDetails: my-esx-3.example.com
	VERBOSE: GetDriverDetails: my-esx-3.example.com
	VERBOSE: Server MOID:  5b56cd3a366c6b3976923bea
	VERBOSE: Computing changes...
	VERBOSE: No changes detected for Server: [FLM2042P049], skipping...
	VERBOSE: Processing {my-esx-3.example.com} : FLM2042P049 complete.
	VERBOSE: ====================================================================================
	VERBOSE: Transcript stopped, output file is C:\ProgramData\Cisco\SystemDiscovery\discovery_131768894634013608.out

  ```

  ---
  ## Other applications
  This toolset can be configured to run periodically to ensure changes are captured and sent to Cisco Intersight for
  evaluation using the following tools in windows:
  1. Windows Task Scheduler
  Please refer to corresponding documentation:
  https://docs.microsoft.com/en-us/windows/desktop/taskschd/task-scheduler-start-page
  2. SCOM (System Center Operations Manager)
  Please refer to corresponding documentation:
  https://docs.microsoft.com/en-us/system-center/scom/manage-running-tasks?view=sc-om-1801
