function New-HyperflexManagedObjectReference {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Val}
    )

    Process {
        'Creating object: intersight.Model.HyperflexManagedObjectReference' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HyperflexManagedObjectReference -ArgumentList @(
            ${Type},
            ${Val}
        )
    }
}
