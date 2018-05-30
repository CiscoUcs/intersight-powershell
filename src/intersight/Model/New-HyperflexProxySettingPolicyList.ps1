function New-HyperflexProxySettingPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexProxySettingPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexProxySettingPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexProxySettingPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
