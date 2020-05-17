function New-DeviceconnectorPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.DeviceconnectorPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.DeviceconnectorPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.DeviceconnectorPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
