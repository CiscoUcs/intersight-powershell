function New-StorageVirtualDriveExtensionList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageVirtualDriveExtension[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageVirtualDriveExtensionList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageVirtualDriveExtensionList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
