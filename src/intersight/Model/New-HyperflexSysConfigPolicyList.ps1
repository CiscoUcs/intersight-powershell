function New-HyperflexSysConfigPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexSysConfigPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexSysConfigPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexSysConfigPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
