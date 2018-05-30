function New-PortGroupList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.PortGroup[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.PortGroupList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.PortGroupList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
