function New-CondHclStatusList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.CondHclStatus[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.CondHclStatusList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CondHclStatusList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
