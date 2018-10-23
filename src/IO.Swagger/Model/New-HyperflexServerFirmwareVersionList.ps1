function New-HyperflexServerFirmwareVersionList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexServerFirmwareVersion[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HyperflexServerFirmwareVersionList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexServerFirmwareVersionList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
