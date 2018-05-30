function New-HyperflexNodeProfileList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexNodeProfile[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexNodeProfileList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexNodeProfileList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
