function New-LicenseAccountLicenseDataList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.LicenseAccountLicenseData[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.LicenseAccountLicenseDataList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.LicenseAccountLicenseDataList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
