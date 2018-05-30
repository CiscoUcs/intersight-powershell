function New-FaultInstanceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.FaultInstance[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.FaultInstanceList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FaultInstanceList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
