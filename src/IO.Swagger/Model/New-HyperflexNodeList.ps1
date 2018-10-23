function New-HyperflexNodeList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexNode[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexNodeList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexNodeList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
