function New-HyperflexClusterList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexCluster[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexClusterList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexClusterList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
