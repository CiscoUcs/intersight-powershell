#region Import functions

'API', 'Model', 'Private' | Get-ChildItem -Path {
    Join-Path $PSScriptRoot $_
} -Filter '*.ps1' | ForEach-Object {
    Write-Verbose "Importing file: $($_.BaseName)"
    try {
        . $_.FullName
    } catch {
        Write-Verbose "Can't import function!"
    }
}

#endregion


#region Initialize APIs

'Creating object: intersight.Api.AaaAuditRecordApi' | Write-Verbose
$Script:AaaAuditRecordApi= New-Object -TypeName intersight.Api.AaaAuditRecordApi -ArgumentList @($null)

'Creating object: intersight.Api.AdapterExtEthInterfaceApi' | Write-Verbose
$Script:AdapterExtEthInterfaceApi= New-Object -TypeName intersight.Api.AdapterExtEthInterfaceApi -ArgumentList @($null)

'Creating object: intersight.Api.AdapterHostEthInterfaceApi' | Write-Verbose
$Script:AdapterHostEthInterfaceApi= New-Object -TypeName intersight.Api.AdapterHostEthInterfaceApi -ArgumentList @($null)

'Creating object: intersight.Api.AdapterHostFcInterfaceApi' | Write-Verbose
$Script:AdapterHostFcInterfaceApi= New-Object -TypeName intersight.Api.AdapterHostFcInterfaceApi -ArgumentList @($null)

'Creating object: intersight.Api.AdapterHostIscsiInterfaceApi' | Write-Verbose
$Script:AdapterHostIscsiInterfaceApi= New-Object -TypeName intersight.Api.AdapterHostIscsiInterfaceApi -ArgumentList @($null)

'Creating object: intersight.Api.AdapterUnitApi' | Write-Verbose
$Script:AdapterUnitApi= New-Object -TypeName intersight.Api.AdapterUnitApi -ArgumentList @($null)

'Creating object: intersight.Api.AssetClusterMemberApi' | Write-Verbose
$Script:AssetClusterMemberApi= New-Object -TypeName intersight.Api.AssetClusterMemberApi -ArgumentList @($null)

'Creating object: intersight.Api.AssetDeviceClaimApi' | Write-Verbose
$Script:AssetDeviceClaimApi= New-Object -TypeName intersight.Api.AssetDeviceClaimApi -ArgumentList @($null)

'Creating object: intersight.Api.AssetDeviceConfigurationApi' | Write-Verbose
$Script:AssetDeviceConfigurationApi= New-Object -TypeName intersight.Api.AssetDeviceConfigurationApi -ArgumentList @($null)

'Creating object: intersight.Api.AssetDeviceRegistrationApi' | Write-Verbose
$Script:AssetDeviceRegistrationApi= New-Object -TypeName intersight.Api.AssetDeviceRegistrationApi -ArgumentList @($null)

'Creating object: intersight.Api.BiosPolicyApi' | Write-Verbose
$Script:BiosPolicyApi= New-Object -TypeName intersight.Api.BiosPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.BiosUnitApi' | Write-Verbose
$Script:BiosUnitApi= New-Object -TypeName intersight.Api.BiosUnitApi -ArgumentList @($null)

'Creating object: intersight.Api.BootPrecisionPolicyApi' | Write-Verbose
$Script:BootPrecisionPolicyApi= New-Object -TypeName intersight.Api.BootPrecisionPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.ComputeBladeApi' | Write-Verbose
$Script:ComputeBladeApi= New-Object -TypeName intersight.Api.ComputeBladeApi -ArgumentList @($null)

'Creating object: intersight.Api.ComputeBoardApi' | Write-Verbose
$Script:ComputeBoardApi= New-Object -TypeName intersight.Api.ComputeBoardApi -ArgumentList @($null)

'Creating object: intersight.Api.ComputePhysicalSummaryApi' | Write-Verbose
$Script:ComputePhysicalSummaryApi= New-Object -TypeName intersight.Api.ComputePhysicalSummaryApi -ArgumentList @($null)

'Creating object: intersight.Api.ComputeRackUnitApi' | Write-Verbose
$Script:ComputeRackUnitApi= New-Object -TypeName intersight.Api.ComputeRackUnitApi -ArgumentList @($null)

'Creating object: intersight.Api.ComputeServerSettingApi' | Write-Verbose
$Script:ComputeServerSettingApi= New-Object -TypeName intersight.Api.ComputeServerSettingApi -ArgumentList @($null)

'Creating object: intersight.Api.CondAlarmApi' | Write-Verbose
$Script:CondAlarmApi= New-Object -TypeName intersight.Api.CondAlarmApi -ArgumentList @($null)

'Creating object: intersight.Api.CondHclStatusApi' | Write-Verbose
$Script:CondHclStatusApi= New-Object -TypeName intersight.Api.CondHclStatusApi -ArgumentList @($null)

'Creating object: intersight.Api.CondHclStatusDetailApi' | Write-Verbose
$Script:CondHclStatusDetailApi= New-Object -TypeName intersight.Api.CondHclStatusDetailApi -ArgumentList @($null)

'Creating object: intersight.Api.CondHclStatusJobApi' | Write-Verbose
$Script:CondHclStatusJobApi= New-Object -TypeName intersight.Api.CondHclStatusJobApi -ArgumentList @($null)

'Creating object: intersight.Api.CryptEncryptionTokenApi' | Write-Verbose
$Script:CryptEncryptionTokenApi= New-Object -TypeName intersight.Api.CryptEncryptionTokenApi -ArgumentList @($null)

'Creating object: intersight.Api.CvdDeploymentTaskApi' | Write-Verbose
$Script:CvdDeploymentTaskApi= New-Object -TypeName intersight.Api.CvdDeploymentTaskApi -ArgumentList @($null)

'Creating object: intersight.Api.CvdTemplateApi' | Write-Verbose
$Script:CvdTemplateApi= New-Object -TypeName intersight.Api.CvdTemplateApi -ArgumentList @($null)

'Creating object: intersight.Api.CvdValidationTaskApi' | Write-Verbose
$Script:CvdValidationTaskApi= New-Object -TypeName intersight.Api.CvdValidationTaskApi -ArgumentList @($null)

'Creating object: intersight.Api.DeviceconnectorPolicyApi' | Write-Verbose
$Script:DeviceconnectorPolicyApi= New-Object -TypeName intersight.Api.DeviceconnectorPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.DeviceinfoSerialNumberInfoApi' | Write-Verbose
$Script:DeviceinfoSerialNumberInfoApi= New-Object -TypeName intersight.Api.DeviceinfoSerialNumberInfoApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentChassisApi' | Write-Verbose
$Script:EquipmentChassisApi= New-Object -TypeName intersight.Api.EquipmentChassisApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentDeviceSummaryApi' | Write-Verbose
$Script:EquipmentDeviceSummaryApi= New-Object -TypeName intersight.Api.EquipmentDeviceSummaryApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentFanApi' | Write-Verbose
$Script:EquipmentFanApi= New-Object -TypeName intersight.Api.EquipmentFanApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentFanModuleApi' | Write-Verbose
$Script:EquipmentFanModuleApi= New-Object -TypeName intersight.Api.EquipmentFanModuleApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentFexApi' | Write-Verbose
$Script:EquipmentFexApi= New-Object -TypeName intersight.Api.EquipmentFexApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentIoCardApi' | Write-Verbose
$Script:EquipmentIoCardApi= New-Object -TypeName intersight.Api.EquipmentIoCardApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentIoExpanderApi' | Write-Verbose
$Script:EquipmentIoExpanderApi= New-Object -TypeName intersight.Api.EquipmentIoExpanderApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentLocatorLedApi' | Write-Verbose
$Script:EquipmentLocatorLedApi= New-Object -TypeName intersight.Api.EquipmentLocatorLedApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentPsuApi' | Write-Verbose
$Script:EquipmentPsuApi= New-Object -TypeName intersight.Api.EquipmentPsuApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentRackEnclosureApi' | Write-Verbose
$Script:EquipmentRackEnclosureApi= New-Object -TypeName intersight.Api.EquipmentRackEnclosureApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentRackEnclosureSlotApi' | Write-Verbose
$Script:EquipmentRackEnclosureSlotApi= New-Object -TypeName intersight.Api.EquipmentRackEnclosureSlotApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentSwitchCardApi' | Write-Verbose
$Script:EquipmentSwitchCardApi= New-Object -TypeName intersight.Api.EquipmentSwitchCardApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentSystemIoControllerApi' | Write-Verbose
$Script:EquipmentSystemIoControllerApi= New-Object -TypeName intersight.Api.EquipmentSystemIoControllerApi -ArgumentList @($null)

'Creating object: intersight.Api.EquipmentTpmApi' | Write-Verbose
$Script:EquipmentTpmApi= New-Object -TypeName intersight.Api.EquipmentTpmApi -ArgumentList @($null)

'Creating object: intersight.Api.EtherPhysicalPortApi' | Write-Verbose
$Script:EtherPhysicalPortApi= New-Object -TypeName intersight.Api.EtherPhysicalPortApi -ArgumentList @($null)

'Creating object: intersight.Api.ExternalsiteAuthorizationApi' | Write-Verbose
$Script:ExternalsiteAuthorizationApi= New-Object -TypeName intersight.Api.ExternalsiteAuthorizationApi -ArgumentList @($null)

'Creating object: intersight.Api.FaultInstanceApi' | Write-Verbose
$Script:FaultInstanceApi= New-Object -TypeName intersight.Api.FaultInstanceApi -ArgumentList @($null)

'Creating object: intersight.Api.FcPhysicalPortApi' | Write-Verbose
$Script:FcPhysicalPortApi= New-Object -TypeName intersight.Api.FcPhysicalPortApi -ArgumentList @($null)

'Creating object: intersight.Api.FeedbackFeedbackPostApi' | Write-Verbose
$Script:FeedbackFeedbackPostApi= New-Object -TypeName intersight.Api.FeedbackFeedbackPostApi -ArgumentList @($null)

'Creating object: intersight.Api.FirmwareDistributableApi' | Write-Verbose
$Script:FirmwareDistributableApi= New-Object -TypeName intersight.Api.FirmwareDistributableApi -ArgumentList @($null)

'Creating object: intersight.Api.FirmwareEulaApi' | Write-Verbose
$Script:FirmwareEulaApi= New-Object -TypeName intersight.Api.FirmwareEulaApi -ArgumentList @($null)

'Creating object: intersight.Api.FirmwareRunningFirmwareApi' | Write-Verbose
$Script:FirmwareRunningFirmwareApi= New-Object -TypeName intersight.Api.FirmwareRunningFirmwareApi -ArgumentList @($null)

'Creating object: intersight.Api.FirmwareUpgradeApi' | Write-Verbose
$Script:FirmwareUpgradeApi= New-Object -TypeName intersight.Api.FirmwareUpgradeApi -ArgumentList @($null)

'Creating object: intersight.Api.FirmwareUpgradeStatusApi' | Write-Verbose
$Script:FirmwareUpgradeStatusApi= New-Object -TypeName intersight.Api.FirmwareUpgradeStatusApi -ArgumentList @($null)

'Creating object: intersight.Api.GraphicsCardApi' | Write-Verbose
$Script:GraphicsCardApi= New-Object -TypeName intersight.Api.GraphicsCardApi -ArgumentList @($null)

'Creating object: intersight.Api.GraphicsControllerApi' | Write-Verbose
$Script:GraphicsControllerApi= New-Object -TypeName intersight.Api.GraphicsControllerApi -ArgumentList @($null)

'Creating object: intersight.Api.HclCompatibilityStatusApi' | Write-Verbose
$Script:HclCompatibilityStatusApi= New-Object -TypeName intersight.Api.HclCompatibilityStatusApi -ArgumentList @($null)

'Creating object: intersight.Api.HclDriverImageApi' | Write-Verbose
$Script:HclDriverImageApi= New-Object -TypeName intersight.Api.HclDriverImageApi -ArgumentList @($null)

'Creating object: intersight.Api.HclOperatingSystemApi' | Write-Verbose
$Script:HclOperatingSystemApi= New-Object -TypeName intersight.Api.HclOperatingSystemApi -ArgumentList @($null)

'Creating object: intersight.Api.HclOperatingSystemVendorApi' | Write-Verbose
$Script:HclOperatingSystemVendorApi= New-Object -TypeName intersight.Api.HclOperatingSystemVendorApi -ArgumentList @($null)

'Creating object: intersight.Api.HclServiceStatusApi' | Write-Verbose
$Script:HclServiceStatusApi= New-Object -TypeName intersight.Api.HclServiceStatusApi -ArgumentList @($null)

'Creating object: intersight.Api.HclSupportedDriverNameApi' | Write-Verbose
$Script:HclSupportedDriverNameApi= New-Object -TypeName intersight.Api.HclSupportedDriverNameApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexAlarmApi' | Write-Verbose
$Script:HyperflexAlarmApi= New-Object -TypeName intersight.Api.HyperflexAlarmApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexAppCatalogApi' | Write-Verbose
$Script:HyperflexAppCatalogApi= New-Object -TypeName intersight.Api.HyperflexAppCatalogApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexAutoSupportPolicyApi' | Write-Verbose
$Script:HyperflexAutoSupportPolicyApi= New-Object -TypeName intersight.Api.HyperflexAutoSupportPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexClusterApi' | Write-Verbose
$Script:HyperflexClusterApi= New-Object -TypeName intersight.Api.HyperflexClusterApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexClusterNetworkPolicyApi' | Write-Verbose
$Script:HyperflexClusterNetworkPolicyApi= New-Object -TypeName intersight.Api.HyperflexClusterNetworkPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexClusterProfileApi' | Write-Verbose
$Script:HyperflexClusterProfileApi= New-Object -TypeName intersight.Api.HyperflexClusterProfileApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexClusterStoragePolicyApi' | Write-Verbose
$Script:HyperflexClusterStoragePolicyApi= New-Object -TypeName intersight.Api.HyperflexClusterStoragePolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexConfigResultApi' | Write-Verbose
$Script:HyperflexConfigResultApi= New-Object -TypeName intersight.Api.HyperflexConfigResultApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexConfigResultEntryApi' | Write-Verbose
$Script:HyperflexConfigResultEntryApi= New-Object -TypeName intersight.Api.HyperflexConfigResultEntryApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexExtFcStoragePolicyApi' | Write-Verbose
$Script:HyperflexExtFcStoragePolicyApi= New-Object -TypeName intersight.Api.HyperflexExtFcStoragePolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexExtIscsiStoragePolicyApi' | Write-Verbose
$Script:HyperflexExtIscsiStoragePolicyApi= New-Object -TypeName intersight.Api.HyperflexExtIscsiStoragePolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexFeatureLimitExternalApi' | Write-Verbose
$Script:HyperflexFeatureLimitExternalApi= New-Object -TypeName intersight.Api.HyperflexFeatureLimitExternalApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexFeatureLimitInternalApi' | Write-Verbose
$Script:HyperflexFeatureLimitInternalApi= New-Object -TypeName intersight.Api.HyperflexFeatureLimitInternalApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexHxdpVersionApi' | Write-Verbose
$Script:HyperflexHxdpVersionApi= New-Object -TypeName intersight.Api.HyperflexHxdpVersionApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexLocalCredentialPolicyApi' | Write-Verbose
$Script:HyperflexLocalCredentialPolicyApi= New-Object -TypeName intersight.Api.HyperflexLocalCredentialPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexNodeApi' | Write-Verbose
$Script:HyperflexNodeApi= New-Object -TypeName intersight.Api.HyperflexNodeApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexNodeConfigPolicyApi' | Write-Verbose
$Script:HyperflexNodeConfigPolicyApi= New-Object -TypeName intersight.Api.HyperflexNodeConfigPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexNodeProfileApi' | Write-Verbose
$Script:HyperflexNodeProfileApi= New-Object -TypeName intersight.Api.HyperflexNodeProfileApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexProxySettingPolicyApi' | Write-Verbose
$Script:HyperflexProxySettingPolicyApi= New-Object -TypeName intersight.Api.HyperflexProxySettingPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexServerFirmwareVersionApi' | Write-Verbose
$Script:HyperflexServerFirmwareVersionApi= New-Object -TypeName intersight.Api.HyperflexServerFirmwareVersionApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexServerModelApi' | Write-Verbose
$Script:HyperflexServerModelApi= New-Object -TypeName intersight.Api.HyperflexServerModelApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexSysConfigPolicyApi' | Write-Verbose
$Script:HyperflexSysConfigPolicyApi= New-Object -TypeName intersight.Api.HyperflexSysConfigPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexUcsmConfigPolicyApi' | Write-Verbose
$Script:HyperflexUcsmConfigPolicyApi= New-Object -TypeName intersight.Api.HyperflexUcsmConfigPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.HyperflexVcenterConfigPolicyApi' | Write-Verbose
$Script:HyperflexVcenterConfigPolicyApi= New-Object -TypeName intersight.Api.HyperflexVcenterConfigPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.IaasConnectorPackApi' | Write-Verbose
$Script:IaasConnectorPackApi= New-Object -TypeName intersight.Api.IaasConnectorPackApi -ArgumentList @($null)

'Creating object: intersight.Api.IaasDeviceStatusApi' | Write-Verbose
$Script:IaasDeviceStatusApi= New-Object -TypeName intersight.Api.IaasDeviceStatusApi -ArgumentList @($null)

'Creating object: intersight.Api.IaasLicenseInfoApi' | Write-Verbose
$Script:IaasLicenseInfoApi= New-Object -TypeName intersight.Api.IaasLicenseInfoApi -ArgumentList @($null)

'Creating object: intersight.Api.IaasMostRunTasksApi' | Write-Verbose
$Script:IaasMostRunTasksApi= New-Object -TypeName intersight.Api.IaasMostRunTasksApi -ArgumentList @($null)

'Creating object: intersight.Api.IaasUcsdInfoApi' | Write-Verbose
$Script:IaasUcsdInfoApi= New-Object -TypeName intersight.Api.IaasUcsdInfoApi -ArgumentList @($null)

'Creating object: intersight.Api.IaasUcsdManagedInfraApi' | Write-Verbose
$Script:IaasUcsdManagedInfraApi= New-Object -TypeName intersight.Api.IaasUcsdManagedInfraApi -ArgumentList @($null)

'Creating object: intersight.Api.IamAccountApi' | Write-Verbose
$Script:IamAccountApi= New-Object -TypeName intersight.Api.IamAccountApi -ArgumentList @($null)

'Creating object: intersight.Api.IamApiKeyApi' | Write-Verbose
$Script:IamApiKeyApi= New-Object -TypeName intersight.Api.IamApiKeyApi -ArgumentList @($null)

'Creating object: intersight.Api.IamDomainGroupApi' | Write-Verbose
$Script:IamDomainGroupApi= New-Object -TypeName intersight.Api.IamDomainGroupApi -ArgumentList @($null)

'Creating object: intersight.Api.IamEndPointPrivilegeApi' | Write-Verbose
$Script:IamEndPointPrivilegeApi= New-Object -TypeName intersight.Api.IamEndPointPrivilegeApi -ArgumentList @($null)

'Creating object: intersight.Api.IamEndPointRoleApi' | Write-Verbose
$Script:IamEndPointRoleApi= New-Object -TypeName intersight.Api.IamEndPointRoleApi -ArgumentList @($null)

'Creating object: intersight.Api.IamEndPointUserApi' | Write-Verbose
$Script:IamEndPointUserApi= New-Object -TypeName intersight.Api.IamEndPointUserApi -ArgumentList @($null)

'Creating object: intersight.Api.IamEndPointUserPolicyApi' | Write-Verbose
$Script:IamEndPointUserPolicyApi= New-Object -TypeName intersight.Api.IamEndPointUserPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.IamEndPointUserRoleApi' | Write-Verbose
$Script:IamEndPointUserRoleApi= New-Object -TypeName intersight.Api.IamEndPointUserRoleApi -ArgumentList @($null)

'Creating object: intersight.Api.IamIdpApi' | Write-Verbose
$Script:IamIdpApi= New-Object -TypeName intersight.Api.IamIdpApi -ArgumentList @($null)

'Creating object: intersight.Api.IamIdpReferenceApi' | Write-Verbose
$Script:IamIdpReferenceApi= New-Object -TypeName intersight.Api.IamIdpReferenceApi -ArgumentList @($null)

'Creating object: intersight.Api.IamLdapGroupApi' | Write-Verbose
$Script:IamLdapGroupApi= New-Object -TypeName intersight.Api.IamLdapGroupApi -ArgumentList @($null)

'Creating object: intersight.Api.IamLdapPolicyApi' | Write-Verbose
$Script:IamLdapPolicyApi= New-Object -TypeName intersight.Api.IamLdapPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.IamLdapProviderApi' | Write-Verbose
$Script:IamLdapProviderApi= New-Object -TypeName intersight.Api.IamLdapProviderApi -ArgumentList @($null)

'Creating object: intersight.Api.IamPermissionApi' | Write-Verbose
$Script:IamPermissionApi= New-Object -TypeName intersight.Api.IamPermissionApi -ArgumentList @($null)

'Creating object: intersight.Api.IamPrivilegeApi' | Write-Verbose
$Script:IamPrivilegeApi= New-Object -TypeName intersight.Api.IamPrivilegeApi -ArgumentList @($null)

'Creating object: intersight.Api.IamPrivilegeSetApi' | Write-Verbose
$Script:IamPrivilegeSetApi= New-Object -TypeName intersight.Api.IamPrivilegeSetApi -ArgumentList @($null)

'Creating object: intersight.Api.IamQualifierApi' | Write-Verbose
$Script:IamQualifierApi= New-Object -TypeName intersight.Api.IamQualifierApi -ArgumentList @($null)

'Creating object: intersight.Api.IamResourceLimitsApi' | Write-Verbose
$Script:IamResourceLimitsApi= New-Object -TypeName intersight.Api.IamResourceLimitsApi -ArgumentList @($null)

'Creating object: intersight.Api.IamRoleApi' | Write-Verbose
$Script:IamRoleApi= New-Object -TypeName intersight.Api.IamRoleApi -ArgumentList @($null)

'Creating object: intersight.Api.IamServiceProviderApi' | Write-Verbose
$Script:IamServiceProviderApi= New-Object -TypeName intersight.Api.IamServiceProviderApi -ArgumentList @($null)

'Creating object: intersight.Api.IamSessionApi' | Write-Verbose
$Script:IamSessionApi= New-Object -TypeName intersight.Api.IamSessionApi -ArgumentList @($null)

'Creating object: intersight.Api.IamSessionLimitsApi' | Write-Verbose
$Script:IamSessionLimitsApi= New-Object -TypeName intersight.Api.IamSessionLimitsApi -ArgumentList @($null)

'Creating object: intersight.Api.IamSystemApi' | Write-Verbose
$Script:IamSystemApi= New-Object -TypeName intersight.Api.IamSystemApi -ArgumentList @($null)

'Creating object: intersight.Api.IamUserApi' | Write-Verbose
$Script:IamUserApi= New-Object -TypeName intersight.Api.IamUserApi -ArgumentList @($null)

'Creating object: intersight.Api.IamUserGroupApi' | Write-Verbose
$Script:IamUserGroupApi= New-Object -TypeName intersight.Api.IamUserGroupApi -ArgumentList @($null)

'Creating object: intersight.Api.IamUserPreferenceApi' | Write-Verbose
$Script:IamUserPreferenceApi= New-Object -TypeName intersight.Api.IamUserPreferenceApi -ArgumentList @($null)

'Creating object: intersight.Api.InventoryDeviceInfoApi' | Write-Verbose
$Script:InventoryDeviceInfoApi= New-Object -TypeName intersight.Api.InventoryDeviceInfoApi -ArgumentList @($null)

'Creating object: intersight.Api.InventoryDnMoBindingApi' | Write-Verbose
$Script:InventoryDnMoBindingApi= New-Object -TypeName intersight.Api.InventoryDnMoBindingApi -ArgumentList @($null)

'Creating object: intersight.Api.InventoryGenericInventoryApi' | Write-Verbose
$Script:InventoryGenericInventoryApi= New-Object -TypeName intersight.Api.InventoryGenericInventoryApi -ArgumentList @($null)

'Creating object: intersight.Api.InventoryGenericInventoryHolderApi' | Write-Verbose
$Script:InventoryGenericInventoryHolderApi= New-Object -TypeName intersight.Api.InventoryGenericInventoryHolderApi -ArgumentList @($null)

'Creating object: intersight.Api.InventoryRequestApi' | Write-Verbose
$Script:InventoryRequestApi= New-Object -TypeName intersight.Api.InventoryRequestApi -ArgumentList @($null)

'Creating object: intersight.Api.IpmioverlanPolicyApi' | Write-Verbose
$Script:IpmioverlanPolicyApi= New-Object -TypeName intersight.Api.IpmioverlanPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.KvmPolicyApi' | Write-Verbose
$Script:KvmPolicyApi= New-Object -TypeName intersight.Api.KvmPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.LicenseAccountLicenseDataApi' | Write-Verbose
$Script:LicenseAccountLicenseDataApi= New-Object -TypeName intersight.Api.LicenseAccountLicenseDataApi -ArgumentList @($null)

'Creating object: intersight.Api.LicenseCustomerOpApi' | Write-Verbose
$Script:LicenseCustomerOpApi= New-Object -TypeName intersight.Api.LicenseCustomerOpApi -ArgumentList @($null)

'Creating object: intersight.Api.LicenseLicenseInfoApi' | Write-Verbose
$Script:LicenseLicenseInfoApi= New-Object -TypeName intersight.Api.LicenseLicenseInfoApi -ArgumentList @($null)

'Creating object: intersight.Api.LicenseSmartlicenseTokenApi' | Write-Verbose
$Script:LicenseSmartlicenseTokenApi= New-Object -TypeName intersight.Api.LicenseSmartlicenseTokenApi -ArgumentList @($null)

'Creating object: intersight.Api.LsServiceProfileApi' | Write-Verbose
$Script:LsServiceProfileApi= New-Object -TypeName intersight.Api.LsServiceProfileApi -ArgumentList @($null)

'Creating object: intersight.Api.ManagementControllerApi' | Write-Verbose
$Script:ManagementControllerApi= New-Object -TypeName intersight.Api.ManagementControllerApi -ArgumentList @($null)

'Creating object: intersight.Api.ManagementEntityApi' | Write-Verbose
$Script:ManagementEntityApi= New-Object -TypeName intersight.Api.ManagementEntityApi -ArgumentList @($null)

'Creating object: intersight.Api.ManagementInterfaceApi' | Write-Verbose
$Script:ManagementInterfaceApi= New-Object -TypeName intersight.Api.ManagementInterfaceApi -ArgumentList @($null)

'Creating object: intersight.Api.MemoryArrayApi' | Write-Verbose
$Script:MemoryArrayApi= New-Object -TypeName intersight.Api.MemoryArrayApi -ArgumentList @($null)

'Creating object: intersight.Api.MemoryUnitApi' | Write-Verbose
$Script:MemoryUnitApi= New-Object -TypeName intersight.Api.MemoryUnitApi -ArgumentList @($null)

'Creating object: intersight.Api.MetaDefinitionApi' | Write-Verbose
$Script:MetaDefinitionApi= New-Object -TypeName intersight.Api.MetaDefinitionApi -ArgumentList @($null)

'Creating object: intersight.Api.NetworkElementApi' | Write-Verbose
$Script:NetworkElementApi= New-Object -TypeName intersight.Api.NetworkElementApi -ArgumentList @($null)

'Creating object: intersight.Api.NetworkElementSummaryApi' | Write-Verbose
$Script:NetworkElementSummaryApi= New-Object -TypeName intersight.Api.NetworkElementSummaryApi -ArgumentList @($null)

'Creating object: intersight.Api.NetworkconfigPolicyApi' | Write-Verbose
$Script:NetworkconfigPolicyApi= New-Object -TypeName intersight.Api.NetworkconfigPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.NtpPolicyApi' | Write-Verbose
$Script:NtpPolicyApi= New-Object -TypeName intersight.Api.NtpPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.OauthOauthUserApi' | Write-Verbose
$Script:OauthOauthUserApi= New-Object -TypeName intersight.Api.OauthOauthUserApi -ArgumentList @($null)

'Creating object: intersight.Api.PciDeviceApi' | Write-Verbose
$Script:PciDeviceApi= New-Object -TypeName intersight.Api.PciDeviceApi -ArgumentList @($null)

'Creating object: intersight.Api.PortGroupApi' | Write-Verbose
$Script:PortGroupApi= New-Object -TypeName intersight.Api.PortGroupApi -ArgumentList @($null)

'Creating object: intersight.Api.PortSubGroupApi' | Write-Verbose
$Script:PortSubGroupApi= New-Object -TypeName intersight.Api.PortSubGroupApi -ArgumentList @($null)

'Creating object: intersight.Api.ProcessorUnitApi' | Write-Verbose
$Script:ProcessorUnitApi= New-Object -TypeName intersight.Api.ProcessorUnitApi -ArgumentList @($null)

'Creating object: intersight.Api.ResourceGroupApi' | Write-Verbose
$Script:ResourceGroupApi= New-Object -TypeName intersight.Api.ResourceGroupApi -ArgumentList @($null)

'Creating object: intersight.Api.SdcardPolicyApi' | Write-Verbose
$Script:SdcardPolicyApi= New-Object -TypeName intersight.Api.SdcardPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.SearchSearchItemApi' | Write-Verbose
$Script:SearchSearchItemApi= New-Object -TypeName intersight.Api.SearchSearchItemApi -ArgumentList @($null)

'Creating object: intersight.Api.SearchSuggestItemApi' | Write-Verbose
$Script:SearchSuggestItemApi= New-Object -TypeName intersight.Api.SearchSuggestItemApi -ArgumentList @($null)

'Creating object: intersight.Api.SearchTagItemApi' | Write-Verbose
$Script:SearchTagItemApi= New-Object -TypeName intersight.Api.SearchTagItemApi -ArgumentList @($null)

'Creating object: intersight.Api.SecurityUnitApi' | Write-Verbose
$Script:SecurityUnitApi= New-Object -TypeName intersight.Api.SecurityUnitApi -ArgumentList @($null)

'Creating object: intersight.Api.ServerConfigChangeDetailApi' | Write-Verbose
$Script:ServerConfigChangeDetailApi= New-Object -TypeName intersight.Api.ServerConfigChangeDetailApi -ArgumentList @($null)

'Creating object: intersight.Api.ServerConfigResultApi' | Write-Verbose
$Script:ServerConfigResultApi= New-Object -TypeName intersight.Api.ServerConfigResultApi -ArgumentList @($null)

'Creating object: intersight.Api.ServerConfigResultEntryApi' | Write-Verbose
$Script:ServerConfigResultEntryApi= New-Object -TypeName intersight.Api.ServerConfigResultEntryApi -ArgumentList @($null)

'Creating object: intersight.Api.ServerProfileApi' | Write-Verbose
$Script:ServerProfileApi= New-Object -TypeName intersight.Api.ServerProfileApi -ArgumentList @($null)

'Creating object: intersight.Api.SmtpPolicyApi' | Write-Verbose
$Script:SmtpPolicyApi= New-Object -TypeName intersight.Api.SmtpPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.SnmpPolicyApi' | Write-Verbose
$Script:SnmpPolicyApi= New-Object -TypeName intersight.Api.SnmpPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.SoftwarerepositoryAuthorizationApi' | Write-Verbose
$Script:SoftwarerepositoryAuthorizationApi= New-Object -TypeName intersight.Api.SoftwarerepositoryAuthorizationApi -ArgumentList @($null)

'Creating object: intersight.Api.SolPolicyApi' | Write-Verbose
$Script:SolPolicyApi= New-Object -TypeName intersight.Api.SolPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.SshPolicyApi' | Write-Verbose
$Script:SshPolicyApi= New-Object -TypeName intersight.Api.SshPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageControllerApi' | Write-Verbose
$Script:StorageControllerApi= New-Object -TypeName intersight.Api.StorageControllerApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageDiskGroupPolicyApi' | Write-Verbose
$Script:StorageDiskGroupPolicyApi= New-Object -TypeName intersight.Api.StorageDiskGroupPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageEnclosureApi' | Write-Verbose
$Script:StorageEnclosureApi= New-Object -TypeName intersight.Api.StorageEnclosureApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageFlexFlashControllerApi' | Write-Verbose
$Script:StorageFlexFlashControllerApi= New-Object -TypeName intersight.Api.StorageFlexFlashControllerApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageFlexFlashControllerPropsApi' | Write-Verbose
$Script:StorageFlexFlashControllerPropsApi= New-Object -TypeName intersight.Api.StorageFlexFlashControllerPropsApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageFlexFlashPhysicalDriveApi' | Write-Verbose
$Script:StorageFlexFlashPhysicalDriveApi= New-Object -TypeName intersight.Api.StorageFlexFlashPhysicalDriveApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageFlexFlashVirtualDriveApi' | Write-Verbose
$Script:StorageFlexFlashVirtualDriveApi= New-Object -TypeName intersight.Api.StorageFlexFlashVirtualDriveApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageFlexUtilControllerApi' | Write-Verbose
$Script:StorageFlexUtilControllerApi= New-Object -TypeName intersight.Api.StorageFlexUtilControllerApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageFlexUtilPhysicalDriveApi' | Write-Verbose
$Script:StorageFlexUtilPhysicalDriveApi= New-Object -TypeName intersight.Api.StorageFlexUtilPhysicalDriveApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageFlexUtilVirtualDriveApi' | Write-Verbose
$Script:StorageFlexUtilVirtualDriveApi= New-Object -TypeName intersight.Api.StorageFlexUtilVirtualDriveApi -ArgumentList @($null)

'Creating object: intersight.Api.StoragePhysicalDiskApi' | Write-Verbose
$Script:StoragePhysicalDiskApi= New-Object -TypeName intersight.Api.StoragePhysicalDiskApi -ArgumentList @($null)

'Creating object: intersight.Api.StoragePhysicalDiskExtensionApi' | Write-Verbose
$Script:StoragePhysicalDiskExtensionApi= New-Object -TypeName intersight.Api.StoragePhysicalDiskExtensionApi -ArgumentList @($null)

'Creating object: intersight.Api.StoragePhysicalDiskUsageApi' | Write-Verbose
$Script:StoragePhysicalDiskUsageApi= New-Object -TypeName intersight.Api.StoragePhysicalDiskUsageApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageSasExpanderApi' | Write-Verbose
$Script:StorageSasExpanderApi= New-Object -TypeName intersight.Api.StorageSasExpanderApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageStoragePolicyApi' | Write-Verbose
$Script:StorageStoragePolicyApi= New-Object -TypeName intersight.Api.StorageStoragePolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageVdMemberEpApi' | Write-Verbose
$Script:StorageVdMemberEpApi= New-Object -TypeName intersight.Api.StorageVdMemberEpApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageVirtualDriveApi' | Write-Verbose
$Script:StorageVirtualDriveApi= New-Object -TypeName intersight.Api.StorageVirtualDriveApi -ArgumentList @($null)

'Creating object: intersight.Api.StorageVirtualDriveExtensionApi' | Write-Verbose
$Script:StorageVirtualDriveExtensionApi= New-Object -TypeName intersight.Api.StorageVirtualDriveExtensionApi -ArgumentList @($null)

'Creating object: intersight.Api.SyslogPolicyApi' | Write-Verbose
$Script:SyslogPolicyApi= New-Object -TypeName intersight.Api.SyslogPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.TaskWorkflowActionApi' | Write-Verbose
$Script:TaskWorkflowActionApi= New-Object -TypeName intersight.Api.TaskWorkflowActionApi -ArgumentList @($null)

'Creating object: intersight.Api.TelemetryTimeSeriesApi' | Write-Verbose
$Script:TelemetryTimeSeriesApi= New-Object -TypeName intersight.Api.TelemetryTimeSeriesApi -ArgumentList @($null)

'Creating object: intersight.Api.TerminalAuditLogApi' | Write-Verbose
$Script:TerminalAuditLogApi= New-Object -TypeName intersight.Api.TerminalAuditLogApi -ArgumentList @($null)

'Creating object: intersight.Api.TestcryptAdministratorApi' | Write-Verbose
$Script:TestcryptAdministratorApi= New-Object -TypeName intersight.Api.TestcryptAdministratorApi -ArgumentList @($null)

'Creating object: intersight.Api.TestcryptCredentialApi' | Write-Verbose
$Script:TestcryptCredentialApi= New-Object -TypeName intersight.Api.TestcryptCredentialApi -ArgumentList @($null)

'Creating object: intersight.Api.TestcryptReadOnlyUserApi' | Write-Verbose
$Script:TestcryptReadOnlyUserApi= New-Object -TypeName intersight.Api.TestcryptReadOnlyUserApi -ArgumentList @($null)

'Creating object: intersight.Api.TestcryptShadowCredentialApi' | Write-Verbose
$Script:TestcryptShadowCredentialApi= New-Object -TypeName intersight.Api.TestcryptShadowCredentialApi -ArgumentList @($null)

'Creating object: intersight.Api.TopSystemApi' | Write-Verbose
$Script:TopSystemApi= New-Object -TypeName intersight.Api.TopSystemApi -ArgumentList @($null)

'Creating object: intersight.Api.VmediaPolicyApi' | Write-Verbose
$Script:VmediaPolicyApi= New-Object -TypeName intersight.Api.VmediaPolicyApi -ArgumentList @($null)

'Creating object: intersight.Api.WorkflowBuildTaskMetaApi' | Write-Verbose
$Script:WorkflowBuildTaskMetaApi= New-Object -TypeName intersight.Api.WorkflowBuildTaskMetaApi -ArgumentList @($null)

'Creating object: intersight.Api.WorkflowBuildTaskMetaOwnerApi' | Write-Verbose
$Script:WorkflowBuildTaskMetaOwnerApi= New-Object -TypeName intersight.Api.WorkflowBuildTaskMetaOwnerApi -ArgumentList @($null)

'Creating object: intersight.Api.WorkflowPendingDynamicWorkflowInfoApi' | Write-Verbose
$Script:WorkflowPendingDynamicWorkflowInfoApi= New-Object -TypeName intersight.Api.WorkflowPendingDynamicWorkflowInfoApi -ArgumentList @($null)

'Creating object: intersight.Api.WorkflowTaskInfoApi' | Write-Verbose
$Script:WorkflowTaskInfoApi= New-Object -TypeName intersight.Api.WorkflowTaskInfoApi -ArgumentList @($null)

'Creating object: intersight.Api.WorkflowTaskMetaApi' | Write-Verbose
$Script:WorkflowTaskMetaApi= New-Object -TypeName intersight.Api.WorkflowTaskMetaApi -ArgumentList @($null)

'Creating object: intersight.Api.WorkflowWorkflowInfoApi' | Write-Verbose
$Script:WorkflowWorkflowInfoApi= New-Object -TypeName intersight.Api.WorkflowWorkflowInfoApi -ArgumentList @($null)

'Creating object: intersight.Api.WorkflowWorkflowMetaApi' | Write-Verbose
$Script:WorkflowWorkflowMetaApi= New-Object -TypeName intersight.Api.WorkflowWorkflowMetaApi -ArgumentList @($null)


#endregion
