function New-ResourceGroupList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ResourceGroup[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.ResourceGroupList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ResourceGroupList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
