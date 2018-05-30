function New-IaasDeviceStatusList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IaasDeviceStatus[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IaasDeviceStatusList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IaasDeviceStatusList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
