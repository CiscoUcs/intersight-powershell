function Invoke-HyperflexUcsmConfigPolicyApiHyperflexUcsmConfigPoliciesGet {
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
        'Calling method: HyperflexUcsmConfigPolicyApi-HyperflexUcsmConfigPoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexUcsmConfigPolicyApi.HyperflexUcsmConfigPoliciesGet(
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

function Invoke-HyperflexUcsmConfigPolicyApiHyperflexUcsmConfigPoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexUcsmConfigPolicyApi-HyperflexUcsmConfigPoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexUcsmConfigPolicyApi.HyperflexUcsmConfigPoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-HyperflexUcsmConfigPolicyApiHyperflexUcsmConfigPoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexUcsmConfigPolicyApi-HyperflexUcsmConfigPoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexUcsmConfigPolicyApi.HyperflexUcsmConfigPoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-HyperflexUcsmConfigPolicyApiHyperflexUcsmConfigPoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexUcsmConfigPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexUcsmConfigPolicyApi-HyperflexUcsmConfigPoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexUcsmConfigPolicyApi.HyperflexUcsmConfigPoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexUcsmConfigPolicyApiHyperflexUcsmConfigPoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexUcsmConfigPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexUcsmConfigPolicyApi-HyperflexUcsmConfigPoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexUcsmConfigPolicyApi.HyperflexUcsmConfigPoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexUcsmConfigPolicyApiHyperflexUcsmConfigPoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexUcsmConfigPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexUcsmConfigPolicyApi-HyperflexUcsmConfigPoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexUcsmConfigPolicyApi.HyperflexUcsmConfigPoliciesPost(
            ${body}
        )
    }
}

