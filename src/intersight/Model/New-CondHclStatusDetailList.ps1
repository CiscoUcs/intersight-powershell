function New-CondHclStatusDetailList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.CondHclStatusDetail[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.CondHclStatusDetailList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CondHclStatusDetailList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
