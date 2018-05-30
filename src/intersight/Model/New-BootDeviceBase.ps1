function New-BootDeviceBase {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating object: intersight.Model.BootDeviceBase' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.BootDeviceBase -ArgumentList @(
            ${Enabled},
            ${Name}
        )
    }
}
