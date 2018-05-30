function New-IamResourceLimitsList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamResourceLimits[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamResourceLimitsList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamResourceLimitsList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
