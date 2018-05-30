function New-DevopsNotificationTrigger {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Motype},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PerformInSystemContext}
    )

    Process {
        'Creating object: intersight.Model.DevopsNotificationTrigger' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.DevopsNotificationTrigger -ArgumentList @(
            ${Moid},
            ${Motype},
            ${PerformInSystemContext}
        )
    }
}
