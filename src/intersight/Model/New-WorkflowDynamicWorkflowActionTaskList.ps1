function New-WorkflowDynamicWorkflowActionTaskList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${Tasks}
    )

    Process {
        'Creating object: intersight.Model.WorkflowDynamicWorkflowActionTaskList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowDynamicWorkflowActionTaskList -ArgumentList @(
            ${Action},
            ${Tasks}
        )
    }
}
