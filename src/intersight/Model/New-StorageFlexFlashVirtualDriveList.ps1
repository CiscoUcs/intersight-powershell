function New-StorageFlexFlashVirtualDriveList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageFlexFlashVirtualDrive[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageFlexFlashVirtualDriveList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageFlexFlashVirtualDriveList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
