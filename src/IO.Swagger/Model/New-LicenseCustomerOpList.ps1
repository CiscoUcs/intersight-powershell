function New-LicenseCustomerOpList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.LicenseCustomerOp[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.LicenseCustomerOpList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.LicenseCustomerOpList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
