function New-EquipmentRackEnclosureSlotList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentRackEnclosureSlot[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentRackEnclosureSlotList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentRackEnclosureSlotList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
