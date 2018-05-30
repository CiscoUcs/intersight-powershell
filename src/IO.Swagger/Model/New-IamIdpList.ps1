function New-IamIdpList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamIdp[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamIdpList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamIdpList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
