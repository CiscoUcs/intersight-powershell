function New-GraphicsCardList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.GraphicsCard[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.GraphicsCardList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.GraphicsCardList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
