function New-HyperflexFeatureLimitEntry {
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
        ${Constraint}
    )

    Process {
        'Creating object: intersight.Model.HyperflexFeatureLimitEntry' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexFeatureLimitEntry -ArgumentList @(
            ${Name},
            ${Value},
            ${Constraint}
        )
    }
}
