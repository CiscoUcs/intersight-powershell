function New-HyperflexUcsmConfigPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexUcsmConfigPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexUcsmConfigPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexUcsmConfigPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
