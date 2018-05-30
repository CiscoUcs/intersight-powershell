function New-LsServiceProfileList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.LsServiceProfile[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.LsServiceProfileList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.LsServiceProfileList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
