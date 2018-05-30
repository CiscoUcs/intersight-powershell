function New-ComputeServerConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssetTag},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserLabel}
    )

    Process {
        'Creating object: intersight.Model.ComputeServerConfig' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ComputeServerConfig -ArgumentList @(
            ${AssetTag},
            ${UserLabel}
        )
    }
}
