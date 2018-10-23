function New-SdcardPartition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SdcardVirtualDrive[]]]
        ${VirtualDrives}
    )

    Process {
        'Creating object: intersight.Model.SdcardPartition' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SdcardPartition -ArgumentList @(
            ${Type},
            ${VirtualDrives}
        )
    }
}
