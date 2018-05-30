function New-WorkflowTaskInfoList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.WorkflowTaskInfo[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.WorkflowTaskInfoList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowTaskInfoList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
