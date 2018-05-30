function New-FirmwareNfsServer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MountOptions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteFile},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteIp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteShare}
    )

    Process {
        'Creating object: intersight.Model.FirmwareNfsServer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FirmwareNfsServer -ArgumentList @(
            ${MountOptions},
            ${RemoteFile},
            ${RemoteIp},
            ${RemoteShare}
        )
    }
}
