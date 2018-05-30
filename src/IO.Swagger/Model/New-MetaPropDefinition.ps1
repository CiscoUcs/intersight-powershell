function New-MetaPropDefinition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApiAccess},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OpSecurity},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${SearchWeight}
    )

    Process {
        'Creating object: intersight.Model.MetaPropDefinition' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.MetaPropDefinition -ArgumentList @(
            ${ApiAccess},
            ${Name},
            ${OpSecurity},
            ${SearchWeight}
        )
    }
}
