function New-ExternalsiteAuthorizationList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ExternalsiteAuthorization[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ExternalsiteAuthorizationList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ExternalsiteAuthorizationList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
