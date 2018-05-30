function Invoke-HyperflexClusterStoragePolicyApiHyperflexClusterStoragePoliciesGet {
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
        'Calling method: HyperflexClusterStoragePolicyApi-HyperflexClusterStoragePoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterStoragePolicyApi.HyperflexClusterStoragePoliciesGet(
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

function Invoke-HyperflexClusterStoragePolicyApiHyperflexClusterStoragePoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexClusterStoragePolicyApi-HyperflexClusterStoragePoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterStoragePolicyApi.HyperflexClusterStoragePoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-HyperflexClusterStoragePolicyApiHyperflexClusterStoragePoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexClusterStoragePolicyApi-HyperflexClusterStoragePoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterStoragePolicyApi.HyperflexClusterStoragePoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-HyperflexClusterStoragePolicyApiHyperflexClusterStoragePoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexClusterStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexClusterStoragePolicyApi-HyperflexClusterStoragePoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterStoragePolicyApi.HyperflexClusterStoragePoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexClusterStoragePolicyApiHyperflexClusterStoragePoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexClusterStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexClusterStoragePolicyApi-HyperflexClusterStoragePoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterStoragePolicyApi.HyperflexClusterStoragePoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexClusterStoragePolicyApiHyperflexClusterStoragePoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexClusterStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexClusterStoragePolicyApi-HyperflexClusterStoragePoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexClusterStoragePolicyApi.HyperflexClusterStoragePoliciesPost(
            ${body}
        )
    }
}

