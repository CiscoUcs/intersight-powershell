function New-ServerProfile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountMoid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoBaseMoRef[]]]
        ${Ancestors},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreateTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ModTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Owners},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoBaseMoRef]]
        ${Parent},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoTag[]]]
        ${Tags},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.PolicyAbstractProfileRef]]
        ${SrcTemplate},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.PolicyConfigContext]]
        ${ConfigContext},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ComputeRackUnitRef]]
        ${AssignedServer},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ComputeRackUnitRef]]
        ${AssociatedServer},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ServerConfigChangeDetailsRef]]
        ${ConfigChangeDetails},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ServerConfigChange]]
        ${ConfigChanges},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.ServerConfigResultRef]]
        ${ConfigResult},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamAccountRef]]
        ${Organization}
    )

    Process {
        'Creating object: intersight.Model.ServerProfile' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.ServerProfile -ArgumentList @(
            ${AccountMoid},
            ${Ancestors},
            ${CreateTime},
            ${ModTime},
            ${Moid},
            ${ObjectType},
            ${Owners},
            ${Parent},
            ${Tags},
            ${Description},
            ${Name},
            ${SrcTemplate},
            ${Type},
            ${Action},
            ${ConfigContext},
            ${AssignedServer},
            ${AssociatedServer},
            ${ConfigChangeDetails},
            ${ConfigChanges},
            ${ConfigResult},
            ${Organization}
        )
    }
}
