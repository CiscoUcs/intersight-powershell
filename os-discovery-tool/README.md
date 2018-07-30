## **ODT (OS Discovery Toolset) scripts**

## Introduction
#### *This toolset enables Cisco Intersight account holders to push server OS inventory to Intersight in order to evaluate the server's HCL validity as it pertains to http://ucshcltool.cisco.com*
---
## File list
```Powershell
 PS C:\<my-workspace>\intersight-powershell\os-discovery-tool> dir

    Directory: C:\<my-workspace>\intersight-powershell\os-discovery-tool


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
  1. A Windows machine (Virtual/Physical) with access to servers on your on-prem network with **Windows Powershell 4.0+** (Should be available on most Windows OS flavors)
  2. **Intersight Powershell SDK** (this repository, follow build instructions from: https://github.com/CiscoUcs/intersight-powershell)
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
   PS C:\<my-workspace>\intersight-powershell\os-discovery-tool> cat ..\..\Documents\discovery_config_esx.json
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
   PS C:\<my-workspace>\intersight-powershell\os-discovery-tool> get-help .\generateSecureCredentials.ps1

	NAME
		C:\<my-workspace>\intersight-powershell\os-discovery-tool\generateSecureCredentials.ps1

	SYNOPSIS
		ODT stands for OS Discovery Toolset
		This is a simple ODT script to encrypt Cisco Intersight and VMware vCenter credentials powered by Windows Powershell 4.0+


	SYNTAX
		C:\<my-workspace>\intersight-powershell\os-discovery-tool\generateSecureCredentials.ps1 [-platform] <String> [<CommonParameters>]


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
		To see the examples, type: "get-help C:\Users\foo\jet\powershell\generateSecureCredentials.ps1 -examples".
		For more information, type: "get-help C:\Users\foo\jet\powershell\generateSecureCredentials.ps1 -detailed".
		For technical information, type: "get-help C:\Users\foo\jet\powershell\generateSecureCredentials.ps1 -full".
		For online help, type: "get-help C:\Users\foo\jet\powershell\generateSecureCredentials.ps1 -online"
  ```
  
  #### Example run of generateSecureCredentials
  ```Powershell
   PS C:\<my-workspace>\intersight-powershell\os-discovery-tool> .\generateSecureCredentials.ps1 -platform esx
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
   PS C:\<my-workspace>\intersight-powershell\os-discovery-tool> get-help .\getEsxOsInvToIntersight.ps1

	NAME   
		C:\<my-workspace>\intersight-powershell\os-discovery-tool\getEsxOsInvToIntersight.ps1

	SYNOPSIS
		ODT stands for OS Discovery Toolset.
		This is a simple ODT script to Discover ESX OS Inventory and TAG Servers managed by Cisco Intersight.
		It can be run via the Windows Task Scheduler to ensure regular refresh and is powered by Windows Powershell 4.0+


	SYNTAX
		...intersight-powershell\os-discovery-tool\getEsxOsInvToIntersight.ps1 [-configfile] <String> [<CommonParameters>]


	DESCRIPTION
		This tool needs to have generateSecureCredentials.ps1 to be run beforehand.

		You need the following files generated:
		1. Path to a config file (discovery_config_esx.json)
		2. Encrypted vCenter Credentials in a PSCredential XML file
		3. Encrypted Intersight Secret Key file


	RELATED LINKS
		https://github.com/CiscoUcs/intersight-powershell

	REMARKS
		To see the examples, type: "get-help C:\Users\foo\jet\powershell\getEsxOsInvToIntersight.ps1 -examples".
		For more information, type: "get-help C:\Users\foo\jet\powershell\getEsxOsInvToIntersight.ps1 -detailed".
		For technical information, type: "get-help C:\Users\foo\jet\powershell\getEsxOsInvToIntersight.ps1 -full".
		For online help, type: "get-help C:\Users\foo\jet\powershell\getEsxOsInvToIntersight.ps1 -online"
  ```
  #### Example run of getEsxOsInvToIntersight
  ```Powershell
	PS C:\<my-workspace>\intersight-powershell\os-discovery-tool> .\getEsxOsInvToIntersight.ps1 -configfile $env:USERPROFILE\Documents\discovery_config_esx_qa.json
			  Welcome to VMware PowerCLI!

	Log in to a vCenter Server or ESX host:              Connect-VIServer
	To find out what commands are available, type:       Get-VICommand
	To show searchable help for all PowerCLI commands:   Get-PowerCLIHelp
	Once you have connected, display all virtual machines: Get-VM
	If you need more help, visit the PowerCLI community: Get-PowerCLICommunity

		   Copyright (C) VMware, Inc. All rights reserved.


	[INFO]: JET script for OS Discovery started...
	[INFO]: Configurations in {$env:USERPROFILE\Documents\discovery_config_esx_qa.json}, validation succeeded!
	Transcript started, output file is C:\ProgramData\Cisco\SystemDiscovery\discovery_131768894634013608.out
	WARNING: There were one or more problems with the server certificate for the server myvcenter.example.com:443:

	* The X509 chain could not be built up to the root certificate.

	Certificate: [Subject]
	  C=US, CN=myvcenter.example.com

	[Issuer]
	  O=MYVCENTER, C=US, DC=local, DC=vsphere, CN=CA

	[Serial Number]
	  00DA7416FA1A22644E

	[Not Before]
	  2/2/2016 6:05:02 PM

	[Not After]
	  1/27/2026 6:04:41 PM

	[Thumbprint]
	  3F999517C097C76607C6CB382F8E4A778C3087C3



	The server certificate is not valid.

	WARNING: THE DEFAULT BEHAVIOR UPON INVALID SERVER CERTIFICATE WILL CHANGE IN A FUTURE RELEASE. To ensure scripts are not affected by the change, use Set-PowerCLIConfiguration to set a value for the
	InvalidCertificateAction option.


	Name                           Port  User
	----                           ----  ----
	myvcenter.example.com 443   VSPHERE.LOCAL\Administrator
	Connecting to Cisco Intersight URL with API Keys:  https://intersight.com/api/v1
	------------------------------------------------------------------------------------
	Processing {my-esx-1.example.com} :
	Intersight API GET succeeded for host FCH16277YXW
	GetOSDetails: my-esx-1.example.com
	GetDriverDetails: my-esx-1.example.com
	Server MOID:  5b56cd3a366c6b3976923be4
	Computing changes...
	Changes detected for Server: [FCH16277YXW], PATCHing to Intersight...
	Processing {my-esx-1.example.com} : FCH16277YXW complete.
	====================================================================================
	------------------------------------------------------------------------------------
	Processing {my-esx-2.example.com} : FCH16277YXW
	Intersight API GET succeeded for host FCH17247F8E
	GetOSDetails: my-esx-2.example.com
	GetDriverDetails: my-esx-2.example.com
	Server MOID:  5b56cd3a366c6b3976923be7
	Computing changes...
	Changes detected for Server: [FCH16277YXW], PATCHing to Intersight...
	Processing {my-esx-2.example.com} : FCH17247F8E complete.
	====================================================================================
	------------------------------------------------------------------------------------
	Processing {my-esx-3.example.com} : FCH17247F8E
	Intersight API GET succeeded for host FLM2042P049
	GetOSDetails: my-esx-3.example.com
	GetDriverDetails: my-esx-3.example.com
	Server MOID:  5b56cd3a366c6b3976923bea
	Computing changes...
	No changes detected for Server: [FLM2042P049], skipping...
	Processing {my-esx-3.example.com} : FLM2042P049 complete.
	====================================================================================
	Transcript stopped, output file is C:\ProgramData\Cisco\SystemDiscovery\discovery_131768894634013608.out

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
  