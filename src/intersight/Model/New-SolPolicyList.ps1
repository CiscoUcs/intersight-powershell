function New-SolPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SolPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SolPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SolPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
