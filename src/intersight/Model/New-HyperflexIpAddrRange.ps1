function New-HyperflexIpAddrRange {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EndAddr},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Gateway},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Netmask},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StartAddr}
    )

    Process {
        'Creating object: intersight.Model.HyperflexIpAddrRange' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexIpAddrRange -ArgumentList @(
            ${EndAddr},
            ${Gateway},
            ${Netmask},
            ${StartAddr}
        )
    }
}
