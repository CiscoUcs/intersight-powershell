function New-FcPhysicalPortList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.FcPhysicalPort[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.FcPhysicalPortList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FcPhysicalPortList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
