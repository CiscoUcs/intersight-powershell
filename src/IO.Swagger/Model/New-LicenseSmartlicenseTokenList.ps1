function New-LicenseSmartlicenseTokenList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.LicenseSmartlicenseToken[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.LicenseSmartlicenseTokenList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.LicenseSmartlicenseTokenList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
