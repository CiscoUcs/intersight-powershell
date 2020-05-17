function New-HyperflexServerFirmwareVersionEntry {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexAppSettingConstraint]]
        ${Constraint},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label}
    )

    Process {
        'Creating object: intersight.Model.HyperflexServerFirmwareVersionEntry' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexServerFirmwareVersionEntry -ArgumentList @(
            ${Name},
            ${Value},
            ${Constraint},
            ${Label}
        )
    }
}
