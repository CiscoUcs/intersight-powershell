function Invoke-IpmioverlanPolicyApiIpmioverlanPoliciesGet {
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
        'Calling method: IpmioverlanPolicyApi-IpmioverlanPoliciesGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:IpmioverlanPolicyApi.IpmioverlanPoliciesGet(
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

function Invoke-IpmioverlanPolicyApiIpmioverlanPoliciesMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: IpmioverlanPolicyApi-IpmioverlanPoliciesMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:IpmioverlanPolicyApi.IpmioverlanPoliciesMoidDelete(
            ${moid}
        )
    }
}

function Invoke-IpmioverlanPolicyApiIpmioverlanPoliciesMoidGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: IpmioverlanPolicyApi-IpmioverlanPoliciesMoidGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:IpmioverlanPolicyApi.IpmioverlanPoliciesMoidGet(
            ${moid}
        )
    }
}

function Invoke-IpmioverlanPolicyApiIpmioverlanPoliciesMoidPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.IpmioverlanPolicy]
        ${body}
    )

    Process {
        'Calling method: IpmioverlanPolicyApi-IpmioverlanPoliciesMoidPatch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:IpmioverlanPolicyApi.IpmioverlanPoliciesMoidPatch(
            ${moid},
            ${body}
        )
    }
}

function Invoke-IpmioverlanPolicyApiIpmioverlanPoliciesMoidPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.IpmioverlanPolicy]
        ${body}
    )

    Process {
        'Calling method: IpmioverlanPolicyApi-IpmioverlanPoliciesMoidPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:IpmioverlanPolicyApi.IpmioverlanPoliciesMoidPost(
            ${moid},
            ${body}
        )
    }
}

function Invoke-IpmioverlanPolicyApiIpmioverlanPoliciesPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.IpmioverlanPolicy]
        ${body}
    )

    Process {
        'Calling method: IpmioverlanPolicyApi-IpmioverlanPoliciesPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:IpmioverlanPolicyApi.IpmioverlanPoliciesPost(
            ${body}
        )
    }
}

