function New-IamLdapProviderList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamLdapProvider[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamLdapProviderList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamLdapProviderList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
