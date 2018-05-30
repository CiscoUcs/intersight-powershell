function New-NetworkElementSummaryList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.NetworkElementSummary[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.NetworkElementSummaryList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.NetworkElementSummaryList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
