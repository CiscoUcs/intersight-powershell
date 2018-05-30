function New-StorageFlexUtilControllerList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.StorageFlexUtilController[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.StorageFlexUtilControllerList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageFlexUtilControllerList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
