function New-HyperflexMacAddrPrefixRange {
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
        'Creating object: intersight.Model.HyperflexMacAddrPrefixRange' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexMacAddrPrefixRange -ArgumentList @(
            ${EndAddr},
            ${StartAddr}
        )
    }
}
