function New-CvdDeploymentTaskList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.CvdDeploymentTask[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.CvdDeploymentTaskList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CvdDeploymentTaskList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
