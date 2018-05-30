function New-I18nMessageParam {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating object: intersight.Model.I18nMessageParam' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.I18nMessageParam -ArgumentList @(
            ${Name},
            ${Value}
        )
    }
}
