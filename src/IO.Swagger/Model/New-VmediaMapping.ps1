function New-VmediaMapping {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AuthenticationProtocol},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HostName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsPasswordSet},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MountOptions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MountProtocol},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteFile},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemotePath},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VolumeName}
    )

    Process {
        'Creating object: intersight.Model.VmediaMapping' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.VmediaMapping -ArgumentList @(
            ${AuthenticationProtocol},
            ${DeviceType},
            ${HostName},
            ${IsPasswordSet},
            ${MountOptions},
            ${MountProtocol},
            ${Password},
            ${RemoteFile},
            ${RemotePath},
            ${Username},
            ${VolumeName}
        )
    }
}
