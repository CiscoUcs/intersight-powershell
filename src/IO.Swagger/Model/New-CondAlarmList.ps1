function New-CondAlarmList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.CondAlarm[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.CondAlarmList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CondAlarmList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
