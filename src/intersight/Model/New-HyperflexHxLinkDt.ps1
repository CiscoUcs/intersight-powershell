function New-HyperflexHxLinkDt {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comments},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Href},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Method},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Rel}
    )

    Process {
        'Creating object: intersight.Model.HyperflexHxLinkDt' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexHxLinkDt -ArgumentList @(
            ${Comments},
            ${Href},
            ${Method},
            ${Rel}
        )
    }
}
