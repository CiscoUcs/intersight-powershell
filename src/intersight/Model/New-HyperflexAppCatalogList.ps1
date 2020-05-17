function New-HyperflexAppCatalogList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexAppCatalog[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexAppCatalogList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexAppCatalogList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
