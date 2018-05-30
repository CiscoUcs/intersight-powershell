function New-IamEndPointUserPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamEndPointUserPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamEndPointUserPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamEndPointUserPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
