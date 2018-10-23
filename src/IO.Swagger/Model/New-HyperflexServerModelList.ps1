function New-HyperflexServerModelList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexServerModel[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexServerModelList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexServerModelList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
