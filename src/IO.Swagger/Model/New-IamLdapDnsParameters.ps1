function New-IamLdapDnsParameters {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SearchDomain},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SearchForest},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Source}
    )

    Process {
        'Creating object: intersight.Model.IamLdapDnsParameters' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamLdapDnsParameters -ArgumentList @(
            ${SearchDomain},
            ${SearchForest},
            ${Source}
        )
    }
}
