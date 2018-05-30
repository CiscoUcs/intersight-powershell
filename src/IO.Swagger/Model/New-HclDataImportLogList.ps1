function New-HclDataImportLogList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.HclDataImportLog[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.HclDataImportLogList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.HclDataImportLogList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
