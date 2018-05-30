function New-StorageSpanGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageLocalDisk[]]]
        ${Disks}
    )

    Process {
        'Creating object: intersight.Model.StorageSpanGroup' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageSpanGroup -ArgumentList @(
            ${Disks}
        )
    }
}
