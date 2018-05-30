function New-ProcessorUnitList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ProcessorUnit[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ProcessorUnitList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ProcessorUnitList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
