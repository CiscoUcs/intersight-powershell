function New-VmediaPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.VmediaPolicy[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.VmediaPolicyList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.VmediaPolicyList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
