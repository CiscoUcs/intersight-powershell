function New-IaasMostRunTasksList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IaasMostRunTasks[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IaasMostRunTasksList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IaasMostRunTasksList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
