function New-AssetClusterMemberList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AssetClusterMember[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.AssetClusterMemberList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.AssetClusterMemberList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
