function New-ImcconnectorSdCardImageDownloadMessageRef {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType}
    )

    Process {
        'Creating object: intersight.Model.ImcconnectorSdCardImageDownloadMessageRef' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ImcconnectorSdCardImageDownloadMessageRef -ArgumentList @(
            ${Moid},
            ${ObjectType}
        )
    }
}
