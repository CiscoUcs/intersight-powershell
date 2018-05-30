function Invoke-StorageFlexUtilPhysicalDriveApiStorageFlexUtilPhysicalDrivesGet {
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
        'Calling method: StorageFlexUtilPhysicalDriveApi-StorageFlexUtilPhysicalDrivesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageFlexUtilPhysicalDriveApi.StorageFlexUtilPhysicalDrivesGet(
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

function Invoke-StorageFlexUtilPhysicalDriveApiStorageFlexUtilPhysicalDrivesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: StorageFlexUtilPhysicalDriveApi-StorageFlexUtilPhysicalDrivesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageFlexUtilPhysicalDriveApi.StorageFlexUtilPhysicalDrivesMoidGet(
            ${moid}
        )
    }
}

function Invoke-StorageFlexUtilPhysicalDriveApiStorageFlexUtilPhysicalDrivesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.StorageFlexUtilPhysicalDrive]
        ${body}
    )

    Process {
        'Calling method: StorageFlexUtilPhysicalDriveApi-StorageFlexUtilPhysicalDrivesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageFlexUtilPhysicalDriveApi.StorageFlexUtilPhysicalDrivesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-StorageFlexUtilPhysicalDriveApiStorageFlexUtilPhysicalDrivesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.StorageFlexUtilPhysicalDrive]
        ${body}
    )

    Process {
        'Calling method: StorageFlexUtilPhysicalDriveApi-StorageFlexUtilPhysicalDrivesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageFlexUtilPhysicalDriveApi.StorageFlexUtilPhysicalDrivesMoidPost(
            ${moid},
            ${body}
        )
    }
}

