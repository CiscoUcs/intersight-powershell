function New-PolicyConfigChange {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Changes},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Disruptions}
    )

    Process {
        'Creating object: intersight.Model.PolicyConfigChange' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.PolicyConfigChange -ArgumentList @(
            ${Changes},
            ${Disruptions}
        )
    }
}
