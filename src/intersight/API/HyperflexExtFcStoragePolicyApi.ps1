function Invoke-HyperflexExtFcStoragePolicyApiHyperflexExtFcStoragePoliciesGet {
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
        'Calling method: HyperflexExtFcStoragePolicyApi-HyperflexExtFcStoragePoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtFcStoragePolicyApi.HyperflexExtFcStoragePoliciesGet(
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

function Invoke-HyperflexExtFcStoragePolicyApiHyperflexExtFcStoragePoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexExtFcStoragePolicyApi-HyperflexExtFcStoragePoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtFcStoragePolicyApi.HyperflexExtFcStoragePoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-HyperflexExtFcStoragePolicyApiHyperflexExtFcStoragePoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexExtFcStoragePolicyApi-HyperflexExtFcStoragePoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtFcStoragePolicyApi.HyperflexExtFcStoragePoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-HyperflexExtFcStoragePolicyApiHyperflexExtFcStoragePoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexExtFcStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexExtFcStoragePolicyApi-HyperflexExtFcStoragePoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtFcStoragePolicyApi.HyperflexExtFcStoragePoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexExtFcStoragePolicyApiHyperflexExtFcStoragePoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexExtFcStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexExtFcStoragePolicyApi-HyperflexExtFcStoragePoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtFcStoragePolicyApi.HyperflexExtFcStoragePoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexExtFcStoragePolicyApiHyperflexExtFcStoragePoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexExtFcStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexExtFcStoragePolicyApi-HyperflexExtFcStoragePoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtFcStoragePolicyApi.HyperflexExtFcStoragePoliciesPost(
            ${body}
        )
    }
}

