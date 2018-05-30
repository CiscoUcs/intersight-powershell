function New-IaasLicenseInfoList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IaasLicenseInfo[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IaasLicenseInfoList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IaasLicenseInfoList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
