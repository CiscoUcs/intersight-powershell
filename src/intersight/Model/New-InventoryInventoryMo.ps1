function New-InventoryInventoryMo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MoDn},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MoId},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MoType}
    )

    Process {
        'Creating object: intersight.Model.InventoryInventoryMo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.InventoryInventoryMo -ArgumentList @(
            ${MoDn},
            ${MoId},
            ${MoType}
        )
    }
}
