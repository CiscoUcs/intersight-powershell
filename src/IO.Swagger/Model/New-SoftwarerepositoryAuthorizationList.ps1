function New-SoftwarerepositoryAuthorizationList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SoftwarerepositoryAuthorization[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SoftwarerepositoryAuthorizationList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SoftwarerepositoryAuthorizationList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
