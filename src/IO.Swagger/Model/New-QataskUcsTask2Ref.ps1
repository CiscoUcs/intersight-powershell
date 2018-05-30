function New-QataskUcsTask2Ref {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType}
    )

    Process {
        'Creating object: intersight.Model.QataskUcsTask2Ref' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.QataskUcsTask2Ref -ArgumentList @(
            ${Moid},
            ${ObjectType}
        )
    }
}
