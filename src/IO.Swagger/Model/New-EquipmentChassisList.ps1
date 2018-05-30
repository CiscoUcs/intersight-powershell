function New-EquipmentChassisList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentChassis[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentChassisList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentChassisList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
