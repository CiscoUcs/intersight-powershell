function New-AdapterHostIscsiInterfaceList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AdapterHostIscsiInterface[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.AdapterHostIscsiInterfaceList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.AdapterHostIscsiInterfaceList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
