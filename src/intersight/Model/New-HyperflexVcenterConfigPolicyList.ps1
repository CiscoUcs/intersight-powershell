function New-HyperflexVcenterConfigPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexVcenterConfigPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexVcenterConfigPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexVcenterConfigPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
