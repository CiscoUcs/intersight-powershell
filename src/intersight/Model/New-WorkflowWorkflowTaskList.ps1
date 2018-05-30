function New-WorkflowWorkflowTaskList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.WorkflowWorkflowTask[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.WorkflowWorkflowTaskList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowWorkflowTaskList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
