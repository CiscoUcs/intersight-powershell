function New-DeviceinfoSerialNumberInfoList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.DeviceinfoSerialNumberInfo[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.DeviceinfoSerialNumberInfoList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.DeviceinfoSerialNumberInfoList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
