function New-IpmioverlanPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IpmioverlanPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IpmioverlanPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IpmioverlanPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
