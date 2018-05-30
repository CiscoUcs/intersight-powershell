function New-ManagementInterfaceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ManagementInterface[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ManagementInterfaceList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ManagementInterfaceList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
