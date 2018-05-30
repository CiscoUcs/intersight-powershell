function New-HyperflexConfigResultEntryList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexConfigResultEntry[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexConfigResultEntryList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexConfigResultEntryList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
