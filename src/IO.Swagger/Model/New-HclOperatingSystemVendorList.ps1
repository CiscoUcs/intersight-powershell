function New-HclOperatingSystemVendorList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HclOperatingSystemVendor[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HclOperatingSystemVendorList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HclOperatingSystemVendorList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
