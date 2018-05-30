function New-StorageEnclosureList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageEnclosure[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageEnclosureList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageEnclosureList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
