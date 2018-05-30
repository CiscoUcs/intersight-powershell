function Invoke-StorageStoragePolicyApiStorageStoragePoliciesGet {
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
        'Calling method: StorageStoragePolicyApi-StorageStoragePoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageStoragePolicyApi.StorageStoragePoliciesGet(
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

function Invoke-StorageStoragePolicyApiStorageStoragePoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: StorageStoragePolicyApi-StorageStoragePoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageStoragePolicyApi.StorageStoragePoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-StorageStoragePolicyApiStorageStoragePoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: StorageStoragePolicyApi-StorageStoragePoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageStoragePolicyApi.StorageStoragePoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-StorageStoragePolicyApiStorageStoragePoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.StorageStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: StorageStoragePolicyApi-StorageStoragePoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageStoragePolicyApi.StorageStoragePoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-StorageStoragePolicyApiStorageStoragePoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.StorageStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: StorageStoragePolicyApi-StorageStoragePoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageStoragePolicyApi.StorageStoragePoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-StorageStoragePolicyApiStorageStoragePoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.StorageStoragePolicy]
        ${body}
    )

    Process {
        'Calling method: StorageStoragePolicyApi-StorageStoragePoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageStoragePolicyApi.StorageStoragePoliciesPost(
            ${body}
        )
    }
}

