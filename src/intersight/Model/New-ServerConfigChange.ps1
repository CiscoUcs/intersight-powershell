function New-ServerConfigChange {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${ConfigChangeTypes},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${DiscruptionTypes}
    )

    Process {
        'Creating object: intersight.Model.ServerConfigChange' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ServerConfigChange -ArgumentList @(
            ${ConfigChangeTypes},
            ${DiscruptionTypes}
        )
    }
}
