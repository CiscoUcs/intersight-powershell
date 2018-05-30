function New-ComputeBoardList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ComputeBoard[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ComputeBoardList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ComputeBoardList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
