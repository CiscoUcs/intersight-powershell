function New-DevopsAbstractTriggerDetails {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: intersight.Model.DevopsAbstractTriggerDetails' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.DevopsAbstractTriggerDetails -ArgumentList @(
        )
    }
}
