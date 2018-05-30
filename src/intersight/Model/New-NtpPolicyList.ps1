function New-NtpPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.NtpPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.NtpPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.NtpPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
