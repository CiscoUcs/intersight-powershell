function New-HclHardwareCompatibilityProfile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DriverIsoUrl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorCode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsVendor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsVersion},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProcessorModel},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HclProduct[]]]
        ${Products},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerModel},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerRevision},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UcsVersion},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VersionType}
    )

    Process {
        'Creating object: intersight.Model.HclHardwareCompatibilityProfile' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HclHardwareCompatibilityProfile -ArgumentList @(
            ${DriverIsoUrl},
            ${ErrorCode},
            ${Id},
            ${OsVendor},
            ${OsVersion},
            ${ProcessorModel},
            ${Products},
            ${ServerModel},
            ${ServerRevision},
            ${UcsVersion},
            ${VersionType}
        )
    }
}
