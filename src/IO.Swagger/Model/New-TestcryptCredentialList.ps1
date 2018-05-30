function New-TestcryptCredentialList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.TestcryptCredential[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.TestcryptCredentialList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.TestcryptCredentialList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
