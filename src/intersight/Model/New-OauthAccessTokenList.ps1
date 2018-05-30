function New-OauthAccessTokenList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.OauthAccessToken[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.OauthAccessTokenList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.OauthAccessTokenList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
