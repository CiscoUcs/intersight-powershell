function New-HyperflexIteratorString {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: intersight.Model.HyperflexIteratorString' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexIteratorString -ArgumentList @(
        )
    }
}
