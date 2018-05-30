function New-ComputePhysicalSummaryList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ComputePhysicalSummary[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ComputePhysicalSummaryList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ComputePhysicalSummaryList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
