function New-EquipmentPsuList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentPsu[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentPsuList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentPsuList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
