function New-ConnectorFetchStreamMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StreamName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64[]]]
        ${Sequences}
    )

    Process {
        'Creating object: intersight.Model.ConnectorFetchStreamMessage' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ConnectorFetchStreamMessage -ArgumentList @(
            ${StreamName},
            ${Sequences}
        )
    }
}
