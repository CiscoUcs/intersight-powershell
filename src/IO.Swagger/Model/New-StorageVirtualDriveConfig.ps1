function New-StorageVirtualDriveConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessPolicy},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BootDrive},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DiskGroupName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DiskGroupPolicy},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DriveCache},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ExpandToAvailable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IoPolicy},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReadPolicy},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Size},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WritePolicy}
    )

    Process {
        'Creating object: intersight.Model.StorageVirtualDriveConfig' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageVirtualDriveConfig -ArgumentList @(
            ${AccessPolicy},
            ${BootDrive},
            ${DiskGroupName},
            ${DiskGroupPolicy},
            ${DriveCache},
            ${ExpandToAvailable},
            ${IoPolicy},
            ${Name},
            ${ReadPolicy},
            ${Size},
            ${WritePolicy}
        )
    }
}
