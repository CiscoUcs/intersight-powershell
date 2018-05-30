function New-WorkflowBuildTaskMetaList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.WorkflowBuildTaskMeta[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.WorkflowBuildTaskMetaList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowBuildTaskMetaList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
