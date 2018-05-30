function New-ComputeRackUnitList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ComputeRackUnit[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ComputeRackUnitList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ComputeRackUnitList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
