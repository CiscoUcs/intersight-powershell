function New-IamLdapGroupList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamLdapGroup[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamLdapGroupList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamLdapGroupList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
