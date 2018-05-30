function New-CryptEncryptionTokenList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.CryptEncryptionToken[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.CryptEncryptionTokenList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CryptEncryptionTokenList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
