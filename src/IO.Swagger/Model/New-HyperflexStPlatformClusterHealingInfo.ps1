function New-HyperflexStPlatformClusterHealingInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${EstimatedCompletionTimeInSeconds},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${InProgress},
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
        ${PercentComplete}
    )

    Process {
        'Creating object: intersight.Model.HyperflexStPlatformClusterHealingInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexStPlatformClusterHealingInfo -ArgumentList @(
            ${EstimatedCompletionTimeInSeconds},
            ${InProgress},
            ${Messages},
            ${MessagesIterator},
            ${MessagesSize},
            ${PercentComplete}
        )
    }
}
