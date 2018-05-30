function New-SearchSearchItemList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SearchSearchItem[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SearchSearchItemList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SearchSearchItemList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
