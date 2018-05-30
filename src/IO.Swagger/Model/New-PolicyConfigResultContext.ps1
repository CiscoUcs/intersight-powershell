function New-PolicyConfigResultContext {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${EntityData},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EntityMoid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EntityName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EntityType}
    )

    Process {
        'Creating object: intersight.Model.PolicyConfigResultContext' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.PolicyConfigResultContext -ArgumentList @(
            ${EntityData},
            ${EntityMoid},
            ${EntityName},
            ${EntityType}
        )
    }
}
