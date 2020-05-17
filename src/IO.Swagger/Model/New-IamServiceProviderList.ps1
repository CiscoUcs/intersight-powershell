function New-IamServiceProviderList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamServiceProvider[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamServiceProviderList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamServiceProviderList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
