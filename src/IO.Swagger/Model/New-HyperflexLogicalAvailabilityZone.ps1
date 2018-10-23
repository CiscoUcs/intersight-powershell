function New-HyperflexLogicalAvailabilityZone {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AutoConfig}
    )

    Process {
        'Creating object: intersight.Model.HyperflexLogicalAvailabilityZone' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexLogicalAvailabilityZone -ArgumentList @(
            ${AutoConfig}
        )
    }
}
