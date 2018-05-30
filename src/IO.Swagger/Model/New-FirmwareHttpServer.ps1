function New-FirmwareHttpServer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LocationLink},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MountOptions}
    )

    Process {
        'Creating object: intersight.Model.FirmwareHttpServer' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FirmwareHttpServer -ArgumentList @(
            ${LocationLink},
            ${MountOptions}
        )
    }
}
