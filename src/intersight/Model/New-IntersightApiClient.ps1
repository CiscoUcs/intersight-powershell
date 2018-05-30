function New-IntersightApiClient {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${IntersightUrl},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${PrivateKeyPath},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${ApiKeyId}
    )

    Process {
        'Creating object: intersight.Client.IntersightApiClient' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $apiClient = New-Object -TypeName intersight.Client.IntersightApiClient -ArgumentList @(
            ${IntersightUrl},
            ${PrivateKeyPath},
            ${ApiKeyId}
        )
        $apiClient.Configuration.ApiClient=$apiClient
    }
}
