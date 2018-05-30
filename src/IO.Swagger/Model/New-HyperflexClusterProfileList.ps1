function New-HyperflexClusterProfileList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexClusterProfile[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexClusterProfileList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexClusterProfileList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
