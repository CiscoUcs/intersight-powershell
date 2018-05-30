function New-IamRoleList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamRole[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamRoleList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamRoleList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
