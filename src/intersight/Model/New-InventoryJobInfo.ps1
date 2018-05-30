function New-InventoryJobInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExecutionStatus},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${JobName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastProcessedTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastScheduledTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Properties},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Regex}
    )

    Process {
        'Creating object: intersight.Model.InventoryJobInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.InventoryJobInfo -ArgumentList @(
            ${ExecutionStatus},
            ${JobName},
            ${LastProcessedTime},
            ${LastScheduledTime},
            ${Properties},
            ${Regex}
        )
    }
}
