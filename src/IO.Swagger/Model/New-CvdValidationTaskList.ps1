function New-CvdValidationTaskList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.CvdValidationTask[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.CvdValidationTaskList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CvdValidationTaskList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
