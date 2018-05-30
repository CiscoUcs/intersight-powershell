function New-StorageControllerList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageController[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageControllerList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageControllerList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
