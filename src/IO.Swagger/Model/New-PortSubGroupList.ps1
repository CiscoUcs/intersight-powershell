function New-PortSubGroupList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.PortSubGroup[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.PortSubGroupList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.PortSubGroupList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
