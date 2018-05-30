function New-HyperflexClusterStoragePolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexClusterStoragePolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexClusterStoragePolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexClusterStoragePolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
