function New-HyperflexClusterNetworkPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexClusterNetworkPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexClusterNetworkPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexClusterNetworkPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
