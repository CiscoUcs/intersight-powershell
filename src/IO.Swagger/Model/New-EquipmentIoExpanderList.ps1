function New-EquipmentIoExpanderList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentIoExpander[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentIoExpanderList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentIoExpanderList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
