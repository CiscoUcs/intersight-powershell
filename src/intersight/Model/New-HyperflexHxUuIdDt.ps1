function New-HyperflexHxUuIdDt {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexHxLinkDt[]]]
        ${Links},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid}
    )

    Process {
        'Creating object: intersight.Model.HyperflexHxUuIdDt' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexHxUuIdDt -ArgumentList @(
            ${Links},
            ${Uuid}
        )
    }
}
