function New-IamPermissionReference {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PermissionIdentifier},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PermissionName}
    )

    Process {
        'Creating object: intersight.Model.IamPermissionReference' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamPermissionReference -ArgumentList @(
            ${PermissionIdentifier},
            ${PermissionName}
        )
    }
}
