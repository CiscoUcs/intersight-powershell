function New-StoragePhysicalDiskList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StoragePhysicalDisk[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StoragePhysicalDiskList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StoragePhysicalDiskList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
