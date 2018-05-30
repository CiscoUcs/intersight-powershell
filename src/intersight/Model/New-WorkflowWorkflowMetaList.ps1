function New-WorkflowWorkflowMetaList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.WorkflowWorkflowMeta[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.WorkflowWorkflowMetaList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowWorkflowMetaList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
