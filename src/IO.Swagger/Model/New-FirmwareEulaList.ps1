function New-FirmwareEulaList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.FirmwareEula[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.FirmwareEulaList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.FirmwareEulaList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
