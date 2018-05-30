function New-EquipmentLocatorLedList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentLocatorLed[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentLocatorLedList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentLocatorLedList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
