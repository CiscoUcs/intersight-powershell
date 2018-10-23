function New-ConnectorCloseStreamMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StreamName}
    )

    Process {
        'Creating object: intersight.Model.ConnectorCloseStreamMessage' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ConnectorCloseStreamMessage -ArgumentList @(
            ${StreamName}
        )
    }
}
