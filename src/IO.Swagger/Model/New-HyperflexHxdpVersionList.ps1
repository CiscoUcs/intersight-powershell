function New-HyperflexHxdpVersionList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexHxdpVersion[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexHxdpVersionList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexHxdpVersionList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
