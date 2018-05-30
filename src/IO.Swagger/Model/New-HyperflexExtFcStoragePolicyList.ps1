function New-HyperflexExtFcStoragePolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexExtFcStoragePolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexExtFcStoragePolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexExtFcStoragePolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
