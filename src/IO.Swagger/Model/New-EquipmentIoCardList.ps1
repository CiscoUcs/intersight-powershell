function New-EquipmentIoCardList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentIoCard[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentIoCardList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentIoCardList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
