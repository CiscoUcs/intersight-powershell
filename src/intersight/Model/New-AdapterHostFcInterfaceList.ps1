function New-AdapterHostFcInterfaceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AdapterHostFcInterface[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.AdapterHostFcInterfaceList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.AdapterHostFcInterfaceList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
