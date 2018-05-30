function New-MetaDefinitionList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MetaDefinition[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.MetaDefinitionList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.MetaDefinitionList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
