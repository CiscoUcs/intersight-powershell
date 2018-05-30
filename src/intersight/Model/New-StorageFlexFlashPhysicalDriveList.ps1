function New-StorageFlexFlashPhysicalDriveList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageFlexFlashPhysicalDrive[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageFlexFlashPhysicalDriveList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageFlexFlashPhysicalDriveList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
