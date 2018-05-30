function New-HyperflexAutoSupportPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexAutoSupportPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexAutoSupportPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexAutoSupportPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
