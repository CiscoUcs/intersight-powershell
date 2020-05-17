function New-OauthOauthUserList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.OauthOauthUser[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.OauthOauthUserList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.OauthOauthUserList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
