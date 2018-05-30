function Invoke-InventoryRequestApiInventoryRequestsPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [intersight.Model.InventoryRequest]
        ${body}
    )

    Process {
        'Calling method: InventoryRequestApi-InventoryRequestsPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:InventoryRequestApi.InventoryRequestsPost(
            ${body}
        )
    }
}

