function New-FirmwareCifsServer {
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
        'Creating object: intersight.Model.FirmwareCifsServer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FirmwareCifsServer -ArgumentList @(
            ${MountOptions},
            ${RemoteFile},
            ${RemoteIp},
            ${RemoteShare}
        )
    }
}
