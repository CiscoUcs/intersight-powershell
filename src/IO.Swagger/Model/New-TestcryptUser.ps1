function New-TestcryptUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsPasswordSet},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating object: intersight.Model.TestcryptUser' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.TestcryptUser -ArgumentList @(
            ${IsPasswordSet},
            ${Password},
            ${Username}
        )
    }
}
