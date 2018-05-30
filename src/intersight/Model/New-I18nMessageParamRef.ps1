function New-I18nMessageParamRef {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType}
    )

    Process {
        'Creating object: intersight.Model.I18nMessageParamRef' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.I18nMessageParamRef -ArgumentList @(
            ${Moid},
            ${ObjectType}
        )
    }
}
