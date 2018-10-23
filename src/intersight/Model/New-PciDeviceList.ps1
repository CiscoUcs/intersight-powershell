function New-PciDeviceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.PciDevice[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.PciDeviceList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.PciDeviceList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
