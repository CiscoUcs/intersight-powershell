function New-ManagementControllerList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ManagementController[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ManagementControllerList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ManagementControllerList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
