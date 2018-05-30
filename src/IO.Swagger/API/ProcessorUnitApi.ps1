function Invoke-ProcessorUnitApiProcessorUnitsGet {
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
        'Calling method: ProcessorUnitApi-ProcessorUnitsGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ProcessorUnitApi.ProcessorUnitsGet(
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

function Invoke-ProcessorUnitApiProcessorUnitsMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: ProcessorUnitApi-ProcessorUnitsMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ProcessorUnitApi.ProcessorUnitsMoidGet(
            ${moid}
        )
    }
}

function Invoke-ProcessorUnitApiProcessorUnitsMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.ProcessorUnit]
        ${body}
    )

    Process {
        'Calling method: ProcessorUnitApi-ProcessorUnitsMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ProcessorUnitApi.ProcessorUnitsMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-ProcessorUnitApiProcessorUnitsMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.ProcessorUnit]
        ${body}
    )

    Process {
        'Calling method: ProcessorUnitApi-ProcessorUnitsMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:ProcessorUnitApi.ProcessorUnitsMoidPost(
            ${moid},
            ${body}
        )
    }
}

