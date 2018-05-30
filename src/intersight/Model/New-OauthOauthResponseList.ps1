function New-OauthOauthResponseList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.OauthOauthResponse[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.OauthOauthResponseList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.OauthOauthResponseList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
