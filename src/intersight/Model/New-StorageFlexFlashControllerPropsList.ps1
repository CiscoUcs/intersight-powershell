function New-StorageFlexFlashControllerPropsList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageFlexFlashControllerProps[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageFlexFlashControllerPropsList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageFlexFlashControllerPropsList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
