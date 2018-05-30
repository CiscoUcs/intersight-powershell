function New-AssetDeviceRegistration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountMoid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoBaseMoRef[]]]
        ${Ancestors},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreateTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ModTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Owners},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoBaseMoRef]]
        ${Parent},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoTag[]]]
        ${Tags},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessKey},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessKeyId},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamAccountRef]]
        ${Account},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ApiVersion},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${AppPartitionNumber},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamUserRef]]
        ${ClaimedByUser},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ClaimedTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectionReason},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectionStatus},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ConnectionStatusLastChangeTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorVersion},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AssetDeviceClaimRef]]
        ${DeviceClaim},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AssetDeviceConfigurationRef]]
        ${DeviceConfiguration},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceExternalIpAddress},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${DeviceHostname},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${DeviceIpAddress},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamDomainGroupRef]]
        ${DomainGroup},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExecutionMode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Pid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PlatformType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProxyApp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PublicAccessKey},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PublicKeyUpgraded},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ReadOnly},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AssetSecurityTokenRef]]
        ${SecurityToken},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Serial},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Vendor}
    )

    Process {
        'Creating object: intersight.Model.AssetDeviceRegistration' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.AssetDeviceRegistration -ArgumentList @(
            ${AccountMoid},
            ${Ancestors},
            ${CreateTime},
            ${ModTime},
            ${Moid},
            ${ObjectType},
            ${Owners},
            ${Parent},
            ${Tags},
            ${AccessKey},
            ${AccessKeyId},
            ${Account},
            ${ApiVersion},
            ${AppPartitionNumber},
            ${ClaimedByUser},
            ${ClaimedTime},
            ${ConnectionReason},
            ${ConnectionStatus},
            ${ConnectionStatusLastChangeTime},
            ${ConnectorVersion},
            ${DeviceClaim},
            ${DeviceConfiguration},
            ${DeviceExternalIpAddress},
            ${DeviceHostname},
            ${DeviceIpAddress},
            ${DomainGroup},
            ${ExecutionMode},
            ${Pid},
            ${PlatformType},
            ${ProxyApp},
            ${PublicAccessKey},
            ${PublicKeyUpgraded},
            ${ReadOnly},
            ${SecurityToken},
            ${Serial},
            ${Vendor}
        )
    }
}
