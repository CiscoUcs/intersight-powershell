function New-NotifsCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${ChangeSet},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ChangeType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_Filter}
    )

    Process {
        'Creating object: intersight.Model.NotifsCondition' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.NotifsCondition -ArgumentList @(
            ${ChangeSet},
            ${ChangeType},
            ${_Filter}
        )
    }
}
