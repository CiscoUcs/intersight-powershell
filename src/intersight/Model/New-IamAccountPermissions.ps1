function New-IamAccountPermissions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountIdentifier},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountStatus},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamPermissionReference[]]]
        ${Permissions}
    )

    Process {
        'Creating object: intersight.Model.IamAccountPermissions' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamAccountPermissions -ArgumentList @(
            ${AccountIdentifier},
            ${AccountName},
            ${AccountStatus},
            ${Permissions}
        )
    }
}
