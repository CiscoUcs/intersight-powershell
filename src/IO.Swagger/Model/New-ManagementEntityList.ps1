function New-ManagementEntityList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ManagementEntity[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ManagementEntityList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ManagementEntityList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
