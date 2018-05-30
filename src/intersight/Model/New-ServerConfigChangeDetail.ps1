function New-ServerConfigChangeDetail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.PolicyConfigResultContext]]
        ${ConfigChangeContext},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConfigChangeType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisruptionType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${MessageParams}
    )

    Process {
        'Creating object: intersight.Model.ServerConfigChangeDetail' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ServerConfigChangeDetail -ArgumentList @(
            ${ConfigChangeContext},
            ${ConfigChangeType},
            ${DisruptionType},
            ${Message},
            ${MessageParams}
        )
    }
}
