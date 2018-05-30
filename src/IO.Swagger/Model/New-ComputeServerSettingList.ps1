function New-ComputeServerSettingList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ComputeServerSetting[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ComputeServerSettingList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ComputeServerSettingList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
