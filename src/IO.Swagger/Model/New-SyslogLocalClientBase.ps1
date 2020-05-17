function New-SyslogLocalClientBase {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MinSeverity}
    )

    Process {
        'Creating object: intersight.Model.SyslogLocalClientBase' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SyslogLocalClientBase -ArgumentList @(
            ${MinSeverity}
        )
    }
}
