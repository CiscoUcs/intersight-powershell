function New-HyperflexWwxnPrefixRange {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EndAddr},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StartAddr}
    )

    Process {
        'Creating object: intersight.Model.HyperflexWwxnPrefixRange' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexWwxnPrefixRange -ArgumentList @(
            ${EndAddr},
            ${StartAddr}
        )
    }
}
