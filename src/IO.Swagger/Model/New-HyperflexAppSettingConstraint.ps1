function New-HyperflexAppSettingConstraint {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HxdpVersion},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HypervisorType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MgmtPlatform},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerModel}
    )

    Process {
        'Creating object: intersight.Model.HyperflexAppSettingConstraint' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexAppSettingConstraint -ArgumentList @(
            ${HxdpVersion},
            ${HypervisorType},
            ${MgmtPlatform},
            ${ServerModel}
        )
    }
}
