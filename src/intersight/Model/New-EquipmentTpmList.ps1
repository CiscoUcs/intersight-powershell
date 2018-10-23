function New-EquipmentTpmList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentTpm[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentTpmList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentTpmList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
