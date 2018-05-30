function New-StoragePhysicalDiskExtensionList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StoragePhysicalDiskExtension[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StoragePhysicalDiskExtensionList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StoragePhysicalDiskExtensionList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
