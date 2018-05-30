function New-InventoryGenericInventoryHolderList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.InventoryGenericInventoryHolder[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.InventoryGenericInventoryHolderList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.InventoryGenericInventoryHolderList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
