function New-IamSessionLimitsList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamSessionLimits[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamSessionLimitsList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamSessionLimitsList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
