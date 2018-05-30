function New-IamUserGroupList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamUserGroup[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamUserGroupList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamUserGroupList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
