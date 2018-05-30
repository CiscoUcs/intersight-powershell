function New-TopSystemList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.TopSystem[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.TopSystemList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.TopSystemList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
