function New-SyslogPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SyslogPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SyslogPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SyslogPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
