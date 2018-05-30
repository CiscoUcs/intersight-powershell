function New-StoragePhysicalDiskUsageList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StoragePhysicalDiskUsage[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StoragePhysicalDiskUsageList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StoragePhysicalDiskUsageList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
