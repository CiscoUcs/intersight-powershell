function New-HyperflexSummary {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActiveNodes},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Boottime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClusterAccessPolicy},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${CompressionSavings},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DataReplicationCompliance},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DataReplicationFactor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${DeduplicationSavings},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Downtime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FreeCapacity},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexStPlatformClusterHealingInfo]]
        ${HealingInfo},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${ResiliencyDetails},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ResiliencyDetailsSize},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HyperflexStPlatformClusterResiliencyInfo]]
        ${ResiliencyInfo},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SpaceStatus},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${State},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TotalCapacity},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${TotalSavings},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uptime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${UsedCapacity}
    )

    Process {
        'Creating object: intersight.Model.HyperflexSummary' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexSummary -ArgumentList @(
            ${ActiveNodes},
            ${Address},
            ${Boottime},
            ${ClusterAccessPolicy},
            ${CompressionSavings},
            ${DataReplicationCompliance},
            ${DataReplicationFactor},
            ${DeduplicationSavings},
            ${Downtime},
            ${FreeCapacity},
            ${HealingInfo},
            ${Name},
            ${ResiliencyDetails},
            ${ResiliencyDetailsSize},
            ${ResiliencyInfo},
            ${SpaceStatus},
            ${State},
            ${TotalCapacity},
            ${TotalSavings},
            ${Uptime},
            ${UsedCapacity}
        )
    }
}
