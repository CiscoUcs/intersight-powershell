function New-HclDriverImageList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HclDriverImage[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HclDriverImageList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HclDriverImageList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
