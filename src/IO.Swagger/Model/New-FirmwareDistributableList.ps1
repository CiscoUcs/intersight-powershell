function New-FirmwareDistributableList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.FirmwareDistributable[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.FirmwareDistributableList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FirmwareDistributableList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
