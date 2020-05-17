function New-WorkflowBuildTaskMetaOwnerList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.WorkflowBuildTaskMetaOwner[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.WorkflowBuildTaskMetaOwnerList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowBuildTaskMetaOwnerList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
