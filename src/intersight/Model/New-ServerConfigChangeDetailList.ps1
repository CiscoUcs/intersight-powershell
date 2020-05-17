function New-ServerConfigChangeDetailList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ServerConfigChangeDetail[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ServerConfigChangeDetailList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ServerConfigChangeDetailList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
