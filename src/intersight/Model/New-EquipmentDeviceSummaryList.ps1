function New-EquipmentDeviceSummaryList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentDeviceSummary[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentDeviceSummaryList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentDeviceSummaryList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
