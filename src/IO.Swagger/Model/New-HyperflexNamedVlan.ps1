function New-HyperflexNamedVlan {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VlanId}
    )

    Process {
        'Creating object: intersight.Model.HyperflexNamedVlan' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexNamedVlan -ArgumentList @(
            ${Name},
            ${VlanId}
        )
    }
}
