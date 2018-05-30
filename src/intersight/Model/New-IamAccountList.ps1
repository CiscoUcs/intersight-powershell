function New-IamAccountList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamAccount[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamAccountList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamAccountList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
