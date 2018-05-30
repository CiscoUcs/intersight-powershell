function New-IamEndPointPrivilegeList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamEndPointPrivilege[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamEndPointPrivilegeList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamEndPointPrivilegeList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
