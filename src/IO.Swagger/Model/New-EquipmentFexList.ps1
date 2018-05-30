function New-EquipmentFexList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.EquipmentFex[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.EquipmentFexList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.EquipmentFexList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
