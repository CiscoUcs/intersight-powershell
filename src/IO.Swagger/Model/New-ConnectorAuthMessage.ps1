function New-ConnectorAuthMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteUserLocale},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteUserName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteUserRoles},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteUserSessionId}
    )

    Process {
        'Creating object: intersight.Model.ConnectorAuthMessage' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ConnectorAuthMessage -ArgumentList @(
            ${RemoteUserLocale},
            ${RemoteUserName},
            ${RemoteUserRoles},
            ${RemoteUserSessionId}
        )
    }
}
