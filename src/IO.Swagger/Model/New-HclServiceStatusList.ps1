function New-HclServiceStatusList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HclServiceStatus[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HclServiceStatusList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HclServiceStatusList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
