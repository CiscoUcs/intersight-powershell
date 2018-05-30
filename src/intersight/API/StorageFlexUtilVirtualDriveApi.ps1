function Invoke-StorageFlexUtilVirtualDriveApiStorageFlexUtilVirtualDrivesGet {
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
        'Calling method: StorageFlexUtilVirtualDriveApi-StorageFlexUtilVirtualDrivesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageFlexUtilVirtualDriveApi.StorageFlexUtilVirtualDrivesGet(
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

function Invoke-StorageFlexUtilVirtualDriveApiStorageFlexUtilVirtualDrivesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: StorageFlexUtilVirtualDriveApi-StorageFlexUtilVirtualDrivesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageFlexUtilVirtualDriveApi.StorageFlexUtilVirtualDrivesMoidGet(
            ${moid}
        )
    }
}

function Invoke-StorageFlexUtilVirtualDriveApiStorageFlexUtilVirtualDrivesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.StorageFlexUtilVirtualDrive]
        ${body}
    )

    Process {
        'Calling method: StorageFlexUtilVirtualDriveApi-StorageFlexUtilVirtualDrivesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageFlexUtilVirtualDriveApi.StorageFlexUtilVirtualDrivesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-StorageFlexUtilVirtualDriveApiStorageFlexUtilVirtualDrivesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.StorageFlexUtilVirtualDrive]
        ${body}
    )

    Process {
        'Calling method: StorageFlexUtilVirtualDriveApi-StorageFlexUtilVirtualDrivesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:StorageFlexUtilVirtualDriveApi.StorageFlexUtilVirtualDrivesMoidPost(
            ${moid},
            ${body}
        )
    }
}

