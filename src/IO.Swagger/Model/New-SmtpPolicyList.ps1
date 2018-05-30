function New-SmtpPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SmtpPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SmtpPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SmtpPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
