function Invoke-SearchSuggestItemApiSearchSuggestItemsPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.SearchSuggestItem]
        ${body}
    )

    Process {
        'Calling method: SearchSuggestItemApi-SearchSuggestItemsPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:SearchSuggestItemApi.SearchSuggestItemsPost(
            ${body}
        )
    }
}

