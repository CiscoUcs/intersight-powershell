function New-SnmpPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SnmpPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SnmpPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SnmpPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
