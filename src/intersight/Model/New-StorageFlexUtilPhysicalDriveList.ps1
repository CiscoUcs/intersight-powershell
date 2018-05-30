function New-StorageFlexUtilPhysicalDriveList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageFlexUtilPhysicalDrive[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageFlexUtilPhysicalDriveList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageFlexUtilPhysicalDriveList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
