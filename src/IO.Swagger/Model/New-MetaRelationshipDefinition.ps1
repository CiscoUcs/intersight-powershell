function New-MetaRelationshipDefinition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApiAccess},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Collection},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating object: intersight.Model.MetaRelationshipDefinition' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.MetaRelationshipDefinition -ArgumentList @(
            ${ApiAccess},
            ${Collection},
            ${Name},
            ${Type}
        )
    }
}
