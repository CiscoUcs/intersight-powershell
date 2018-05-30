function New-StorageRemoteKeySetting {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsPasswordSet},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Port},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PrimaryServer},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecondaryServer},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerCertificate},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating object: intersight.Model.StorageRemoteKeySetting' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.StorageRemoteKeySetting -ArgumentList @(
            ${IsPasswordSet},
            ${Password},
            ${Port},
            ${PrimaryServer},
            ${SecondaryServer},
            ${ServerCertificate},
            ${Username}
        )
    }
}
