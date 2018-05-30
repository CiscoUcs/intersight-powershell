function New-AdapterHostEthInterfaceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AdapterHostEthInterface[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.AdapterHostEthInterfaceList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.AdapterHostEthInterfaceList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
