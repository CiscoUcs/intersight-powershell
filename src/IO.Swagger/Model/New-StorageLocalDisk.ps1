function New-StorageLocalDisk {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SlotNumber}
    )

    Process {
        'Creating object: intersight.Model.StorageLocalDisk' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageLocalDisk -ArgumentList @(
            ${SlotNumber}
        )
    }
}
