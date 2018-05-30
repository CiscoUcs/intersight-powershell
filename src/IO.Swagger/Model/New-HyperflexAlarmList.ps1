function New-HyperflexAlarmList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexAlarm[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexAlarmList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexAlarmList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
