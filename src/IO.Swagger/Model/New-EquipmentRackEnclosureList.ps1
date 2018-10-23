function New-EquipmentRackEnclosureList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentRackEnclosure[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentRackEnclosureList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentRackEnclosureList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
