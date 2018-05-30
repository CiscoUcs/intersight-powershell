function New-ConnectorpackConnectorPackSummary {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DownloadedVersion},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version}
    )

    Process {
        'Creating object: intersight.Model.ConnectorpackConnectorPackSummary' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ConnectorpackConnectorPackSummary -ArgumentList @(
            ${DownloadedVersion},
            ${Name},
            ${Version}
        )
    }
}
