function New-IaasLicenseUtilizationInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ActualUsed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LicensedLimit},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Sku}
    )

    Process {
        'Creating object: intersight.Model.IaasLicenseUtilizationInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IaasLicenseUtilizationInfo -ArgumentList @(
            ${ActualUsed},
            ${Label},
            ${LicensedLimit},
            ${Sku}
        )
    }
}
