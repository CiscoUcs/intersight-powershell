function New-HyperflexConfigResultList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexConfigResult[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexConfigResultList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexConfigResultList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
