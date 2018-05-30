function New-StorageStoragePolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageStoragePolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageStoragePolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageStoragePolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
