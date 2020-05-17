function New-SdcardVirtualDrive {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enable}
    )

    Process {
        'Creating object: intersight.Model.SdcardVirtualDrive' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SdcardVirtualDrive -ArgumentList @(
            ${Enable}
        )
    }
}
