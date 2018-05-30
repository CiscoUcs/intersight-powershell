function New-IamEndPointPasswordPropertiesRef {
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
        'Creating object: intersight.Model.IamEndPointPasswordPropertiesRef' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamEndPointPasswordPropertiesRef -ArgumentList @(
            ${Moid},
            ${ObjectType}
        )
    }
}
