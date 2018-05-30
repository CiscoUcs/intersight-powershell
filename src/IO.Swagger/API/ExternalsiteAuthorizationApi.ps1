function Invoke-ExternalsiteAuthorizationApiExternalsiteAuthorizationsGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Boolean]
        ${$count},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${$inlinecount},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${$top},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${$skip},
        [Parameter(Position = 4, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${$filter},
        [Parameter(Position = 5, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${$select},
        [Parameter(Position = 6, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${$orderby},
        [Parameter(Position = 7, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${$expand}
    )

    Process {
        'Calling method: ExternalsiteAuthorizationApi-ExternalsiteAuthorizationsGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ExternalsiteAuthorizationApi.ExternalsiteAuthorizationsGet(
            ${$count},
            ${$inlinecount},
            ${$top},
            ${$skip},
            ${$filter},
            ${$select},
            ${$orderby},
            ${$expand}
        )
    }
}

function Invoke-ExternalsiteAuthorizationApiExternalsiteAuthorizationsMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: ExternalsiteAuthorizationApi-ExternalsiteAuthorizationsMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ExternalsiteAuthorizationApi.ExternalsiteAuthorizationsMoidGet(
            ${moid}
        )
    }
}

function Invoke-ExternalsiteAuthorizationApiExternalsiteAuthorizationsMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.ExternalsiteAuthorization]
        ${body}
    )

    Process {
        'Calling method: ExternalsiteAuthorizationApi-ExternalsiteAuthorizationsMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ExternalsiteAuthorizationApi.ExternalsiteAuthorizationsMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-ExternalsiteAuthorizationApiExternalsiteAuthorizationsMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.ExternalsiteAuthorization]
        ${body}
    )

    Process {
        'Calling method: ExternalsiteAuthorizationApi-ExternalsiteAuthorizationsMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ExternalsiteAuthorizationApi.ExternalsiteAuthorizationsMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-ExternalsiteAuthorizationApiExternalsiteAuthorizationsPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.ExternalsiteAuthorization]
        ${body}
    )

    Process {
        'Calling method: ExternalsiteAuthorizationApi-ExternalsiteAuthorizationsPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ExternalsiteAuthorizationApi.ExternalsiteAuthorizationsPost(
            ${body}
        )
    }
}

