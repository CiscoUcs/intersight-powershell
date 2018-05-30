function New-SearchTagItemList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SearchTagItem[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SearchTagItemList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SearchTagItemList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
