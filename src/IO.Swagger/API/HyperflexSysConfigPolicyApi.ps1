function Invoke-HyperflexSysConfigPolicyApiHyperflexSysConfigPoliciesGet {
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
        'Calling method: HyperflexSysConfigPolicyApi-HyperflexSysConfigPoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexSysConfigPolicyApi.HyperflexSysConfigPoliciesGet(
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

function Invoke-HyperflexSysConfigPolicyApiHyperflexSysConfigPoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexSysConfigPolicyApi-HyperflexSysConfigPoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexSysConfigPolicyApi.HyperflexSysConfigPoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-HyperflexSysConfigPolicyApiHyperflexSysConfigPoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexSysConfigPolicyApi-HyperflexSysConfigPoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexSysConfigPolicyApi.HyperflexSysConfigPoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-HyperflexSysConfigPolicyApiHyperflexSysConfigPoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexSysConfigPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexSysConfigPolicyApi-HyperflexSysConfigPoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexSysConfigPolicyApi.HyperflexSysConfigPoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexSysConfigPolicyApiHyperflexSysConfigPoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexSysConfigPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexSysConfigPolicyApi-HyperflexSysConfigPoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexSysConfigPolicyApi.HyperflexSysConfigPoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexSysConfigPolicyApiHyperflexSysConfigPoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexSysConfigPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexSysConfigPolicyApi-HyperflexSysConfigPoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexSysConfigPolicyApi.HyperflexSysConfigPoliciesPost(
            ${body}
        )
    }
}

