function New-HyperflexExtIscsiStoragePolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexExtIscsiStoragePolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexExtIscsiStoragePolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexExtIscsiStoragePolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
