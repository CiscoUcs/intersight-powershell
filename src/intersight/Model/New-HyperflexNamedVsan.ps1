function New-HyperflexNamedVsan {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${VsanId}
    )

    Process {
        'Creating object: intersight.Model.HyperflexNamedVsan' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexNamedVsan -ArgumentList @(
            ${Name},
            ${VsanId}
        )
    }
}
