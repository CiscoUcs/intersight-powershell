function New-CommIpV6Interface {
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
        ${Prefix}
    )

    Process {
        'Creating object: intersight.Model.CommIpV6Interface' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CommIpV6Interface -ArgumentList @(
            ${Gateway},
            ${IpAddress},
            ${Prefix}
        )
    }
}
