function New-RestApiList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.RestApi[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.RestApiList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.RestApiList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
