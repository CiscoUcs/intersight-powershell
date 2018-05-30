function New-IamEndPointRoleList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamEndPointRole[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamEndPointRoleList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamEndPointRoleList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
