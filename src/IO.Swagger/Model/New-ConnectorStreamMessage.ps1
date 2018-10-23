function New-ConnectorStreamMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StreamName}
    )

    Process {
        'Creating object: intersight.Model.ConnectorStreamMessage' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ConnectorStreamMessage -ArgumentList @(
            ${StreamName}
        )
    }
}
