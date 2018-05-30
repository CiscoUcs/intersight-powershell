function New-StorageFlexUtilVirtualDriveList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageFlexUtilVirtualDrive[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageFlexUtilVirtualDriveList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageFlexUtilVirtualDriveList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
