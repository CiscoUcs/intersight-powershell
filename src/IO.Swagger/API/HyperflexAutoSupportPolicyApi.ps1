function Invoke-HyperflexAutoSupportPolicyApiHyperflexAutoSupportPoliciesGet {
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
        'Calling method: HyperflexAutoSupportPolicyApi-HyperflexAutoSupportPoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexAutoSupportPolicyApi.HyperflexAutoSupportPoliciesGet(
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

function Invoke-HyperflexAutoSupportPolicyApiHyperflexAutoSupportPoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexAutoSupportPolicyApi-HyperflexAutoSupportPoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexAutoSupportPolicyApi.HyperflexAutoSupportPoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-HyperflexAutoSupportPolicyApiHyperflexAutoSupportPoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexAutoSupportPolicyApi-HyperflexAutoSupportPoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexAutoSupportPolicyApi.HyperflexAutoSupportPoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-HyperflexAutoSupportPolicyApiHyperflexAutoSupportPoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexAutoSupportPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexAutoSupportPolicyApi-HyperflexAutoSupportPoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexAutoSupportPolicyApi.HyperflexAutoSupportPoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexAutoSupportPolicyApiHyperflexAutoSupportPoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexAutoSupportPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexAutoSupportPolicyApi-HyperflexAutoSupportPoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexAutoSupportPolicyApi.HyperflexAutoSupportPoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexAutoSupportPolicyApiHyperflexAutoSupportPoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexAutoSupportPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexAutoSupportPolicyApi-HyperflexAutoSupportPoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexAutoSupportPolicyApi.HyperflexAutoSupportPoliciesPost(
            ${body}
        )
    }
}

