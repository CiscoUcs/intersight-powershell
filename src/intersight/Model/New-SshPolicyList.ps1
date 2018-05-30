function New-SshPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SshPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SshPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SshPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
