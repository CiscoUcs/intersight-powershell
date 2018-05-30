function New-EquipmentSwitchCardList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentSwitchCard[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentSwitchCardList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentSwitchCardList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
