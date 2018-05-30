function New-NetworkElementList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.NetworkElement[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.NetworkElementList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.NetworkElementList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
