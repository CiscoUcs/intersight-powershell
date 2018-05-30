function New-EquipmentSystemIoControllerList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentSystemIoController[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentSystemIoControllerList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentSystemIoControllerList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
