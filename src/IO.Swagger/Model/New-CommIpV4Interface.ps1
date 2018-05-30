function New-CommIpV4Interface {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Gateway},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IpAddress},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Netmask}
    )

    Process {
        'Creating object: intersight.Model.CommIpV4Interface' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CommIpV4Interface -ArgumentList @(
            ${Gateway},
            ${IpAddress},
            ${Netmask}
        )
    }
}
