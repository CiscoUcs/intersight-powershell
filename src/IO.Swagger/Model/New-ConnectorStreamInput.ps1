function New-ConnectorStreamInput {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StreamName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${Input}
    )

    Process {
        'Creating object: intersight.Model.ConnectorStreamInput' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ConnectorStreamInput -ArgumentList @(
            ${StreamName},
            ${Input}
        )
    }
}
