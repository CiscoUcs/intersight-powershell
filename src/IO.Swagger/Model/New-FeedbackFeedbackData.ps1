function New-FeedbackFeedbackData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Evaluation},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FollowUp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${TraceIds},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating object: intersight.Model.FeedbackFeedbackData' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FeedbackFeedbackData -ArgumentList @(
            ${Comment},
            ${Email},
            ${Evaluation},
            ${FollowUp},
            ${TraceIds},
            ${Type}
        )
    }
}
