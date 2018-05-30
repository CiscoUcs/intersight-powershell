function New-ServerProfileList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ServerProfile[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ServerProfileList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ServerProfileList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
