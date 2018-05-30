function New-BootPrecisionPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.BootPrecisionPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.BootPrecisionPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.BootPrecisionPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
