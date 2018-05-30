function Invoke-FirmwareRunningFirmwareApiFirmwareRunningFirmwaresGet {
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
        'Calling method: FirmwareRunningFirmwareApi-FirmwareRunningFirmwaresGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:FirmwareRunningFirmwareApi.FirmwareRunningFirmwaresGet(
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

function Invoke-FirmwareRunningFirmwareApiFirmwareRunningFirmwaresMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: FirmwareRunningFirmwareApi-FirmwareRunningFirmwaresMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:FirmwareRunningFirmwareApi.FirmwareRunningFirmwaresMoidGet(
            ${moid}
        )
    }
}

function Invoke-FirmwareRunningFirmwareApiFirmwareRunningFirmwaresMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.FirmwareRunningFirmware]
        ${body}
    )

    Process {
        'Calling method: FirmwareRunningFirmwareApi-FirmwareRunningFirmwaresMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:FirmwareRunningFirmwareApi.FirmwareRunningFirmwaresMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-FirmwareRunningFirmwareApiFirmwareRunningFirmwaresMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.FirmwareRunningFirmware]
        ${body}
    )

    Process {
        'Calling method: FirmwareRunningFirmwareApi-FirmwareRunningFirmwaresMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:FirmwareRunningFirmwareApi.FirmwareRunningFirmwaresMoidPost(
            ${moid},
            ${body}
        )
    }
}

