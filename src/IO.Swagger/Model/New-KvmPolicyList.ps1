function New-KvmPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.KvmPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.KvmPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.KvmPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
