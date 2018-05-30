function New-TaskWorkflowActionList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.TaskWorkflowAction[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.TaskWorkflowActionList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.TaskWorkflowActionList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
