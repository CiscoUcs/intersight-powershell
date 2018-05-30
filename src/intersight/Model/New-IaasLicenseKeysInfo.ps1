function New-IaasLicenseKeysInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExpirationDate},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LicenseId},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pid}
    )

    Process {
        'Creating object: intersight.Model.IaasLicenseKeysInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IaasLicenseKeysInfo -ArgumentList @(
            ${Count},
            ${ExpirationDate},
            ${LicenseId},
            ${Pid}
        )
    }
}
