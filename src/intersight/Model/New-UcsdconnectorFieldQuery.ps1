function New-UcsdconnectorFieldQuery {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.UcsdconnectorSqlQuery]]
        ${Query}
    )

    Process {
        'Creating object: intersight.Model.UcsdconnectorFieldQuery' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.UcsdconnectorFieldQuery -ArgumentList @(
            ${FieldName},
            ${Query}
        )
    }
}
