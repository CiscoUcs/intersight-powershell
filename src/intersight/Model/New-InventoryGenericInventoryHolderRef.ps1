function New-InventoryGenericInventoryHolderRef {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType}
    )

    Process {
        'Creating object: intersight.Model.InventoryGenericInventoryHolderRef' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.InventoryGenericInventoryHolderRef -ArgumentList @(
            ${Moid},
            ${ObjectType}
        )
    }
}
