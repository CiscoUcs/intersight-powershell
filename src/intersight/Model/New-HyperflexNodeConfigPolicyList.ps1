function New-HyperflexNodeConfigPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexNodeConfigPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexNodeConfigPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexNodeConfigPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
