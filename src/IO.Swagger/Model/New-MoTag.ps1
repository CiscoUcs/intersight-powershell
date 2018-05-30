function New-MoTag {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating object: intersight.Model.MoTag' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.MoTag -ArgumentList @(
            ${Key},
            ${Value}
        )
    }
}
