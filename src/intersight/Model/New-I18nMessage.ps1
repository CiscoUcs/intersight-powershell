function New-I18nMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MessageId},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.I18nMessageParam[]]]
        ${MessageParams}
    )

    Process {
        'Creating object: intersight.Model.I18nMessage' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.I18nMessage -ArgumentList @(
            ${Message},
            ${MessageId},
            ${MessageParams}
        )
    }
}
