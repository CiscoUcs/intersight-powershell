function New-BiosUnitList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.BiosUnit[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.BiosUnitList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.BiosUnitList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
