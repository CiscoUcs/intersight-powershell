function New-SdcardPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.SdcardPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.SdcardPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.SdcardPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
