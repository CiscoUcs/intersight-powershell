function New-IamIdpReferenceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamIdpReference[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamIdpReferenceList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamIdpReferenceList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
