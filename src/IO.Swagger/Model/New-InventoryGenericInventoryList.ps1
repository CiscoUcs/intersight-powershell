function New-InventoryGenericInventoryList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.InventoryGenericInventory[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.InventoryGenericInventoryList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.InventoryGenericInventoryList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
