function New-FirmwareUpgradeList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.FirmwareUpgrade[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.FirmwareUpgradeList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FirmwareUpgradeList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
