function New-IamDomainGroupList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamDomainGroup[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamDomainGroupList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamDomainGroupList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
