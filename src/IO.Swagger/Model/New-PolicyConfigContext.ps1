function New-PolicyConfigContext {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConfigState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ControlAction},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OperState}
    )

    Process {
        'Creating object: intersight.Model.PolicyConfigContext' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.PolicyConfigContext -ArgumentList @(
            ${ConfigState},
            ${ControlAction},
            ${ErrorState},
            ${OperState}
        )
    }
}
