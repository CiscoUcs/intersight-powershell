function New-IaasUcsdManagedInfraList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IaasUcsdManagedInfra[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IaasUcsdManagedInfraList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IaasUcsdManagedInfraList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
