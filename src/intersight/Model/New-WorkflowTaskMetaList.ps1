function New-WorkflowTaskMetaList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.WorkflowTaskMeta[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.WorkflowTaskMetaList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowTaskMetaList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
