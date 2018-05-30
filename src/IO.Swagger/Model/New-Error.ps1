function New-Error {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.Error]]
        ${cause},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${code},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${message},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${messageId}
    )

    Process {
        'Creating object: intersight.Model.Error' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.Error -ArgumentList @(
            ${cause},
            ${code},
            ${message},
            ${messageId}
        )
    }
}
