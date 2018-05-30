function Invoke-HyperflexExtIscsiStoragePolicyApiHyperflexExtIscsiStoragePoliciesGet {
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
        'Calling method: HyperflexExtIscsiStoragePolicyApi-HyperflexExtIscsiStoragePoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtIscsiStoragePolicyApi.HyperflexExtIscsiStoragePoliciesGet(
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

function Invoke-HyperflexExtIscsiStoragePolicyApiHyperflexExtIscsiStoragePoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexExtIscsiStoragePolicyApi-HyperflexExtIscsiStoragePoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtIscsiStoragePolicyApi.HyperflexExtIscsiStoragePoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-HyperflexExtIscsiStoragePolicyApiHyperflexExtIscsiStoragePoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: HyperflexExtIscsiStoragePolicyApi-HyperflexExtIscsiStoragePoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtIscsiStoragePolicyApi.HyperflexExtIscsiStoragePoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-HyperflexExtIscsiStoragePolicyApiHyperflexExtIscsiStoragePoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexExtIscsiStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexExtIscsiStoragePolicyApi-HyperflexExtIscsiStoragePoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtIscsiStoragePolicyApi.HyperflexExtIscsiStoragePoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexExtIscsiStoragePolicyApiHyperflexExtIscsiStoragePoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexExtIscsiStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexExtIscsiStoragePolicyApi-HyperflexExtIscsiStoragePoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtIscsiStoragePolicyApi.HyperflexExtIscsiStoragePoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-HyperflexExtIscsiStoragePolicyApiHyperflexExtIscsiStoragePoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.HyperflexExtIscsiStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: HyperflexExtIscsiStoragePolicyApi-HyperflexExtIscsiStoragePoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:HyperflexExtIscsiStoragePolicyApi.HyperflexExtIscsiStoragePoliciesPost(
            ${body}
        )
    }
}

