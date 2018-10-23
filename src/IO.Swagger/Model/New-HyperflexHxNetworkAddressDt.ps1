function New-HyperflexHxNetworkAddressDt {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Fqdn},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ip}
    )

    Process {
        'Creating object: intersight.Model.HyperflexHxNetworkAddressDt' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexHxNetworkAddressDt -ArgumentList @(
            ${Address},
            ${Fqdn},
            ${Ip}
        )
    }
}
