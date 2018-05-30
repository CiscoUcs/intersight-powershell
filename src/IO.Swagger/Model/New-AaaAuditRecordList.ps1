function New-AaaAuditRecordList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.AaaAuditRecord[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.AaaAuditRecordList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.AaaAuditRecordList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
