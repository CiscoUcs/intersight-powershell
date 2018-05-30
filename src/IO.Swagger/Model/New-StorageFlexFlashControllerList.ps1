function New-StorageFlexFlashControllerList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageFlexFlashController[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageFlexFlashControllerList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageFlexFlashControllerList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
