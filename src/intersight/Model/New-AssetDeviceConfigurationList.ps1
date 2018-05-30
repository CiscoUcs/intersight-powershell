function New-AssetDeviceConfigurationList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AssetDeviceConfiguration[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.AssetDeviceConfigurationList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.AssetDeviceConfigurationList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
