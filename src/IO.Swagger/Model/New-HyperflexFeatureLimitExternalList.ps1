function New-HyperflexFeatureLimitExternalList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexFeatureLimitExternal[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexFeatureLimitExternalList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexFeatureLimitExternalList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
