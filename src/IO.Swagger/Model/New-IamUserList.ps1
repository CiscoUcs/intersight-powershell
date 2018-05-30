function New-IamUserList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamUser[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamUserList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamUserList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
