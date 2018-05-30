function New-InventoryDnMoBindingList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.InventoryDnMoBinding[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.InventoryDnMoBindingList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.InventoryDnMoBindingList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
