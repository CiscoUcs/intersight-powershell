function New-DevopsNotificationTrigger {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Account},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DomainGroup},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MoType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ModificationType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecurityContextSubject},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SecurityContextType}
    )

    Process {
        'Creating object: intersight.Model.DevopsNotificationTrigger' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.DevopsNotificationTrigger -ArgumentList @(
            ${Account},
            ${DomainGroup},
            ${MoType},
            ${ModificationType},
            ${Moid},
            ${SecurityContextSubject},
            ${SecurityContextType}
        )
    }
}
