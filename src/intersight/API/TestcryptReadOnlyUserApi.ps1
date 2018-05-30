function Invoke-TestcryptReadOnlyUserApiTestcryptReadOnlyUsersGet {
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
        'Calling method: TestcryptReadOnlyUserApi-TestcryptReadOnlyUsersGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TestcryptReadOnlyUserApi.TestcryptReadOnlyUsersGet(
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

function Invoke-TestcryptReadOnlyUserApiTestcryptReadOnlyUsersMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: TestcryptReadOnlyUserApi-TestcryptReadOnlyUsersMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TestcryptReadOnlyUserApi.TestcryptReadOnlyUsersMoidDelete(
            ${moid}
        )
    }
}

function Invoke-TestcryptReadOnlyUserApiTestcryptReadOnlyUsersMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: TestcryptReadOnlyUserApi-TestcryptReadOnlyUsersMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TestcryptReadOnlyUserApi.TestcryptReadOnlyUsersMoidGet(
            ${moid}
        )
    }
}

function Invoke-TestcryptReadOnlyUserApiTestcryptReadOnlyUsersMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.TestcryptReadOnlyUser]
        ${body}
    )

    Process {
        'Calling method: TestcryptReadOnlyUserApi-TestcryptReadOnlyUsersMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TestcryptReadOnlyUserApi.TestcryptReadOnlyUsersMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-TestcryptReadOnlyUserApiTestcryptReadOnlyUsersMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.TestcryptReadOnlyUser]
        ${body}
    )

    Process {
        'Calling method: TestcryptReadOnlyUserApi-TestcryptReadOnlyUsersMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TestcryptReadOnlyUserApi.TestcryptReadOnlyUsersMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-TestcryptReadOnlyUserApiTestcryptReadOnlyUsersPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.TestcryptReadOnlyUser]
        ${body}
    )

    Process {
        'Calling method: TestcryptReadOnlyUserApi-TestcryptReadOnlyUsersPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:TestcryptReadOnlyUserApi.TestcryptReadOnlyUsersPost(
            ${body}
        )
    }
}

