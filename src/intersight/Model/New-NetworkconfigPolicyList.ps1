function New-NetworkconfigPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.NetworkconfigPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.NetworkconfigPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.NetworkconfigPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
