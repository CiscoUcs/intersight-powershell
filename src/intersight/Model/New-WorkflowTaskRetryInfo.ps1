function New-WorkflowTaskRetryInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TaskInstId}
    )

    Process {
        'Creating object: intersight.Model.WorkflowTaskRetryInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.WorkflowTaskRetryInfo -ArgumentList @(
            ${Status},
            ${TaskInstId}
        )
    }
}
