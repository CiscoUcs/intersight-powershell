function Invoke-FeedbackFeedbackPostApiFeedbackFeedbackPostsPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.FeedbackFeedbackPost]
        ${body}
    )

    Process {
        'Calling method: FeedbackFeedbackPostApi-FeedbackFeedbackPostsPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:FeedbackFeedbackPostApi.FeedbackFeedbackPostsPost(
            ${body}
        )
    }
}

