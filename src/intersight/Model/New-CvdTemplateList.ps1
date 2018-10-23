function New-CvdTemplateList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.CvdTemplate[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.CvdTemplateList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.CvdTemplateList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
