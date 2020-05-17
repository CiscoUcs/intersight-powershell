function New-IamSsoSessionAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdpSessionIndex}
    )

    Process {
        'Creating object: intersight.Model.IamSsoSessionAttributes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.IamSsoSessionAttributes -ArgumentList @(
            ${IdpSessionIndex}
        )
    }
}
