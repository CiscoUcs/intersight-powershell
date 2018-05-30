function New-GraphicsControllerList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.GraphicsController[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.GraphicsControllerList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.GraphicsControllerList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
