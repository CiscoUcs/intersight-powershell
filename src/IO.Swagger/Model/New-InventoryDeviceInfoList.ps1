function New-InventoryDeviceInfoList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.InventoryDeviceInfo[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.InventoryDeviceInfoList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.InventoryDeviceInfoList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
