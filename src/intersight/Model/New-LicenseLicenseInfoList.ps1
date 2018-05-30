function New-LicenseLicenseInfoList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.LicenseLicenseInfo[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.LicenseLicenseInfoList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.LicenseLicenseInfoList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
