function New-HclOperatingSystemList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HclOperatingSystem[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HclOperatingSystemList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HclOperatingSystemList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
