function New-UcsdconnectorTelemetryMo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.UcsdconnectorFieldQuery[]]]
        ${FieldQueries},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MoName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.UcsdconnectorSqlQuery]]
        ${ObjectQuery}
    )

    Process {
        'Creating object: intersight.Model.UcsdconnectorTelemetryMo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.UcsdconnectorTelemetryMo -ArgumentList @(
            ${FieldQueries},
            ${MoName},
            ${ObjectQuery}
        )
    }
}
