function New-IamSystemList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamSystem[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.IamSystemList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamSystemList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
