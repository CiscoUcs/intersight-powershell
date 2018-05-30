function Invoke-HclSupportedDriverNameApiHclSupportedDriverNamesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HclSupportedDriverName]
        ${body}
    )

    Process {
        'Calling method: HclSupportedDriverNameApi-HclSupportedDriverNamesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HclSupportedDriverNameApi.HclSupportedDriverNamesPost(
            ${body}
        )
    }
}

