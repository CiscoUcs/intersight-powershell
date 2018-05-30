function New-TaskFileDownloadInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Contents},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Path},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Source},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating object: intersight.Model.TaskFileDownloadInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.TaskFileDownloadInfo -ArgumentList @(
            ${Contents},
            ${Path},
            ${Source},
            ${Type}
        )
    }
}
