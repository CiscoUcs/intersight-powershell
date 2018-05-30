function New-WorkflowWorkflowInfoList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.WorkflowWorkflowInfo[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.WorkflowWorkflowInfoList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowWorkflowInfoList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
