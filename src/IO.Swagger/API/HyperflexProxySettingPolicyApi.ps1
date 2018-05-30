function Invoke-HyperflexProxySettingPolicyApiHyperflexProxySettingPoliciesGet {
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
        'Calling method: HyperflexProxySettingPolicyApi-HyperflexProxySettingPoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexProxySettingPolicyApi.HyperflexProxySettingPoliciesGet(
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

function Invoke-HyperflexProxySettingPolicyApiHyperflexProxySettingPoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexProxySettingPolicyApi-HyperflexProxySettingPoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexProxySettingPolicyApi.HyperflexProxySettingPoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-HyperflexProxySettingPolicyApiHyperflexProxySettingPoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexProxySettingPolicyApi-HyperflexProxySettingPoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexProxySettingPolicyApi.HyperflexProxySettingPoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-HyperflexProxySettingPolicyApiHyperflexProxySettingPoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexProxySettingPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexProxySettingPolicyApi-HyperflexProxySettingPoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexProxySettingPolicyApi.HyperflexProxySettingPoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexProxySettingPolicyApiHyperflexProxySettingPoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexProxySettingPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexProxySettingPolicyApi-HyperflexProxySettingPoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexProxySettingPolicyApi.HyperflexProxySettingPoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexProxySettingPolicyApiHyperflexProxySettingPoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexProxySettingPolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexProxySettingPolicyApi-HyperflexProxySettingPoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexProxySettingPolicyApi.HyperflexProxySettingPoliciesPost(
            ${body}
        )
    }
}

