function New-TestcryptAdministratorList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.TestcryptAdministrator[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.TestcryptAdministratorList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.TestcryptAdministratorList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
