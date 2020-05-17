function New-HyperflexStPlatformClusterResiliencyInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${HddFailuresTolerable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Messages},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${MessagesIterator},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MessagesSize},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NodeFailuresTolerable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${SsdFailuresTolerable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${State}
    )

    Process {
        'Creating object: intersight.Model.HyperflexStPlatformClusterResiliencyInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexStPlatformClusterResiliencyInfo -ArgumentList @(
            ${HddFailuresTolerable},
            ${Messages},
            ${MessagesIterator},
            ${MessagesSize},
            ${NodeFailuresTolerable},
            ${SsdFailuresTolerable},
            ${State}
        )
    }
}
