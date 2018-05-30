function New-IamPermissionList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamPermission[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamPermissionList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamPermissionList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
