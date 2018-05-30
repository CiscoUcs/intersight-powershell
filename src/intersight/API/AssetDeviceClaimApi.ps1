function Invoke-AssetDeviceClaimApiAssetDeviceClaimsMoidDelete {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${moid}
    )

    Process {
        'Calling method: AssetDeviceClaimApi-AssetDeviceClaimsMoidDelete' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:AssetDeviceClaimApi.AssetDeviceClaimsMoidDelete(
            ${moid}
        )
    }
}

function Invoke-AssetDeviceClaimApiAssetDeviceClaimsPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.AssetDeviceClaim]
        ${body}
    )

    Process {
        'Calling method: AssetDeviceClaimApi-AssetDeviceClaimsPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:AssetDeviceClaimApi.AssetDeviceClaimsPost(
            ${body}
        )
    }
}

