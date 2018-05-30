function New-IamApiKeyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamApiKey[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamApiKeyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamApiKeyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
