function New-HyperflexFeatureLimitInternalList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexFeatureLimitInternal[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexFeatureLimitInternalList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexFeatureLimitInternalList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
