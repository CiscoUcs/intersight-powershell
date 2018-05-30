function Invoke-HyperflexClusterNetworkPolicyApiHyperflexClusterNetworkPoliciesGet {
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
        'Calling method: HyperflexClusterNetworkPolicyApi-HyperflexClusterNetworkPoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterNetworkPolicyApi.HyperflexClusterNetworkPoliciesGet(
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

function Invoke-HyperflexClusterNetworkPolicyApiHyperflexClusterNetworkPoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexClusterNetworkPolicyApi-HyperflexClusterNetworkPoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterNetworkPolicyApi.HyperflexClusterNetworkPoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-HyperflexClusterNetworkPolicyApiHyperflexClusterNetworkPoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexClusterNetworkPolicyApi-HyperflexClusterNetworkPoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterNetworkPolicyApi.HyperflexClusterNetworkPoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-HyperflexClusterNetworkPolicyApiHyperflexClusterNetworkPoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexClusterNetworkPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexClusterNetworkPolicyApi-HyperflexClusterNetworkPoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterNetworkPolicyApi.HyperflexClusterNetworkPoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexClusterNetworkPolicyApiHyperflexClusterNetworkPoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexClusterNetworkPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexClusterNetworkPolicyApi-HyperflexClusterNetworkPoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterNetworkPolicyApi.HyperflexClusterNetworkPoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexClusterNetworkPolicyApiHyperflexClusterNetworkPoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexClusterNetworkPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexClusterNetworkPolicyApi-HyperflexClusterNetworkPoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterNetworkPolicyApi.HyperflexClusterNetworkPoliciesPost(
            ${body}
        )
    }
}

