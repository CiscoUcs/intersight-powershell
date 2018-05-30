function New-AssetDeviceRegistrationList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AssetDeviceRegistration[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.AssetDeviceRegistrationList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.AssetDeviceRegistrationList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
