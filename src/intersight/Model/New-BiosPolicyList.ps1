function New-BiosPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.BiosPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.BiosPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.BiosPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
