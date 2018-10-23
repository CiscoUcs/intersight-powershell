function New-MoVersionContext {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoMoRef[]]]
        ${InterestedMos},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoMoRef]]
        ${RefMo},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Timestamp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VersionType}
    )

    Process {
        'Creating object: intersight.Model.MoVersionContext' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.MoVersionContext -ArgumentList @(
            ${InterestedMos},
            ${RefMo},
            ${Timestamp},
            ${Version},
            ${VersionType}
        )
    }
}
