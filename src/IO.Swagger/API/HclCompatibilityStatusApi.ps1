function Invoke-HclCompatibilityStatusApiHclCompatibilityStatusesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HclCompatibilityStatus]
        ${body}
    )

    Process {
        'Calling method: HclCompatibilityStatusApi-HclCompatibilityStatusesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HclCompatibilityStatusApi.HclCompatibilityStatusesPost(
            ${body}
        )
    }
}

