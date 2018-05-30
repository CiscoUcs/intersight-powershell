function New-ComputeBladeList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ComputeBlade[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ComputeBladeList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ComputeBladeList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
