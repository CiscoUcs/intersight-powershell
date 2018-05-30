function New-IamEndPointPasswordProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnablePasswordExpiry},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnforceStrongPassword},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${GracePeriod},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${NotificationPeriod},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PasswordExpiryDuration},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PasswordHistory}
    )

    Process {
        'Creating object: intersight.Model.IamEndPointPasswordProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamEndPointPasswordProperties -ArgumentList @(
            ${EnablePasswordExpiry},
            ${EnforceStrongPassword},
            ${GracePeriod},
            ${NotificationPeriod},
            ${PasswordExpiryDuration},
            ${PasswordHistory}
        )
    }
}
