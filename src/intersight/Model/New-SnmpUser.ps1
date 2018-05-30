function New-SnmpUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AuthPassword},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AuthType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsAuthPasswordSet},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsPrivacyPasswordSet},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PrivacyPassword},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PrivacyType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecurityLevel}
    )

    Process {
        'Creating object: intersight.Model.SnmpUser' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SnmpUser -ArgumentList @(
            ${AuthPassword},
            ${AuthType},
            ${IsAuthPasswordSet},
            ${IsPrivacyPasswordSet},
            ${Name},
            ${PrivacyPassword},
            ${PrivacyType},
            ${SecurityLevel}
        )
    }
}
