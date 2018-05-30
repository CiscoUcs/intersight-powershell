function New-StorageDiskGroupPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageDiskGroupPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageDiskGroupPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageDiskGroupPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
