function New-HyperflexLocalCredentialPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexLocalCredentialPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexLocalCredentialPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexLocalCredentialPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
