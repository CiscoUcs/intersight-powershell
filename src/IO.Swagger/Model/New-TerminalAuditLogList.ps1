function New-TerminalAuditLogList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.TerminalAuditLog[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.TerminalAuditLogList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.TerminalAuditLogList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
