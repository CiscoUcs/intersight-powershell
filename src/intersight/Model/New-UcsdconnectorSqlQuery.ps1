function New-UcsdconnectorSqlQuery {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${Params},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query}
    )

    Process {
        'Creating object: intersight.Model.UcsdconnectorSqlQuery' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.UcsdconnectorSqlQuery -ArgumentList @(
            ${Params},
            ${Query}
        )
    }
}
