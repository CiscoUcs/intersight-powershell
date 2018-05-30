function New-IamLdapBaseProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BaseDn},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BindDn},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BindMethod},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableEncryption},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableGroupAuthorization},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${_Filter},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GroupAttribute},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsPasswordSet},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NestedGroupSearchDepth},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Timeout}
    )

    Process {
        'Creating object: intersight.Model.IamLdapBaseProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamLdapBaseProperties -ArgumentList @(
            ${Attribute},
            ${BaseDn},
            ${BindDn},
            ${BindMethod},
            ${Domain},
            ${EnableEncryption},
            ${EnableGroupAuthorization},
            ${_Filter},
            ${GroupAttribute},
            ${IsPasswordSet},
            ${NestedGroupSearchDepth},
            ${Password},
            ${Timeout}
        )
    }
}
