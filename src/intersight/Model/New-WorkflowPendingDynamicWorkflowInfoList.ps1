function New-WorkflowPendingDynamicWorkflowInfoList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.WorkflowPendingDynamicWorkflowInfo[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.WorkflowPendingDynamicWorkflowInfoList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowPendingDynamicWorkflowInfoList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
