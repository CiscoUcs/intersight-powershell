function New-CvdInputMeta {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldFilter},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldLabel},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldName},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FieldValue}
    )

    Process {
        'Creating object: intersight.Model.CvdInputMeta' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CvdInputMeta -ArgumentList @(
            ${FieldFilter},
            ${FieldLabel},
            ${FieldName},
            ${FieldValue}
        )
    }
}
