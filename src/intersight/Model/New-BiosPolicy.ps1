function New-BiosPolicy {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountMoid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoBaseMoRef[]]]
        ${Ancestors},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreateTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ModTime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Moid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String[]]]
        ${Owners},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoBaseMoRef]]
        ${Parent},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoTag[]]]
        ${Tags},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MoVersionContext]]
        ${VersionContext},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AdjacentCacheLinePrefetch},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AllUsbDevices},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Altitude},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AspmSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssertNmiOnPerr},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssertNmiOnSerr},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AutoCcState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AutonumousCstateEnable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BaudRate},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BmeDmaMitigation},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BootOptionNumRetry},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BootOptionReCoolDown},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BootOptionRetry},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BootPerformanceMode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnCpuCpb},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnCpuGenDowncoreCtrl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnCpuGlobalCstateCtrl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnCpuL1streamHwPrefetcher},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnCpuL2streamHwPrefetcher},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnDeterminismSlider},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnGnbNbIommu},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnMemCtrlBankGroupSwapDdr4},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmnMemMapBankInterleaveDdr4},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsCmncTdpCtl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsDfCmnMemIntlv},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CbsDfCmnMemIntlvSize},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CdnEnable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CdnSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ChannelInterLeave},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CkeLowPolicy},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClosedLoopThermThrotl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CmciEnable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConfigTdp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConsoleRedirection},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CoreMultiProcessing},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CpuEnergyPerformance},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CpuFrequencyFloor},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CpuPerformance},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CpuPowerManagement},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DemandScrub},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DirectCacheAccess},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DramClockThrottling},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DramRefreshRate},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EnergyEfficientTurbo},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EngPerfTuning},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EnhancedIntelSpeedStepTech},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EppProfile},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExecuteDisableBit},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExtendedApic},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FlowControl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Frb2enable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HardwarePrefetch},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HwpmEnable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ImcInterleave},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IntelHyperThreadingTech},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IntelTurboBoostTech},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IntelVirtualizationTechnology},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IntelVtForDirectedIo},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IntelVtdCoherencySupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IntelVtdInterruptRemapping},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IntelVtdPassThroughDmaSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IntelVtdatsSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IohErrorEnable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IohResource},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IpPrefetch},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ipv6pxe},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${KtiPrefetch},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LegacyOsRedirection},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LegacyUsbSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LlcPrefetch},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LomPort0state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LomPort1state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LomPort2state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LomPort3state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LomPortsAllState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LvDdrMode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MakeDeviceNonBootable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MemoryInterLeave},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MemoryMappedIoAbove4gb},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MirroringMode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MmcfgBase},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NumaOptimized},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Onboard10gbitLom},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OnboardGbitLom},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OnboardScuStorageSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OnboardScuStorageSwStack},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.IamAccountRef]]
        ${Organization},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsBootWatchdogTimer},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsBootWatchdogTimerPolicy},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OsBootWatchdogTimerTimeout},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OutOfBandMgmtPort},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PackageCstateLimit},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PatrolScrub},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PatrolScrubDuration},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PcIeSsdHotPlugSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PchUsb30mode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PciOptionRoMs},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PciRomClp},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PopSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PostErrorPause},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProcessorC1e},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProcessorC3report},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProcessorC6report},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProcessorCstate},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.PolicyAbstractConfigProfileRef[]]]
        ${Profiles},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Psata},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PstateCoordType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PuttyKeyPad},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PwrPerfTuning},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${QpiLinkFrequency},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${QpiSnoopMode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RankInterLeave},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RedirectionAfterPost},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SataModeSelect},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SelectMemoryRasConfiguration},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SerialPortAenable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SinglePctlEnable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot10linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot10state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot11linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot11state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot12linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot12state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot1linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot1state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot2linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot2state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot3linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot3state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot4linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot4state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot5linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot5state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot6linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot6state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot7linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot7state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot8linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot8state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot9linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slot9state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotFlomLinkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotFrontNvme1linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotFrontNvme2linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotFrontSlot5linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotFrontSlot6linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotHbaLinkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotHbaState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotLom1link},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotLom2link},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotMezzState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotMlomLinkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotMlomState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotMraidLinkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotMraidState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN10state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN11state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN12state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN13state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN14state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN15state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN16state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN17state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN18state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN19state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN1state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN20state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN21state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN22state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN23state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN24state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN2state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN3state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN4state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN5state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN6state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN7state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN8state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotN9state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRaidLinkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRaidState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme1linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme1state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme2linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme2state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme3state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme4state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme5state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme6state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme7state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRearNvme8state},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRiser1linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRiser1slot1linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRiser1slot2linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRiser1slot3linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRiser2linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRiser2slot4linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRiser2slot5linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotRiser2slot6linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotSasState},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotSsdSlot1linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlotSsdSlot2linkSpeed},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Smee},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SmtMode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Snc},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SparingMode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SrIov},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StreamerPrefetch},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SvmMode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TerminalType},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TpmControl},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TpmSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TxtSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UcsmBootOrderRule},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsbEmul6064},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsbPortFront},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsbPortInternal},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsbPortKvm},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsbPortRear},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsbPortSdCard},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsbPortVmedia},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UsbXhciSupport},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VgaPriority},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VmdEnable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkLoadConfig},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${XptPrefetch}
    )

    Process {
        'Creating object: intersight.Model.BiosPolicy' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.BiosPolicy -ArgumentList @(
            ${AccountMoid},
            ${Ancestors},
            ${CreateTime},
            ${ModTime},
            ${Moid},
            ${ObjectType},
            ${Owners},
            ${Parent},
            ${Tags},
            ${VersionContext},
            ${Description},
            ${Name},
            ${AdjacentCacheLinePrefetch},
            ${AllUsbDevices},
            ${Altitude},
            ${AspmSupport},
            ${AssertNmiOnPerr},
            ${AssertNmiOnSerr},
            ${AutoCcState},
            ${AutonumousCstateEnable},
            ${BaudRate},
            ${BmeDmaMitigation},
            ${BootOptionNumRetry},
            ${BootOptionReCoolDown},
            ${BootOptionRetry},
            ${BootPerformanceMode},
            ${CbsCmnCpuCpb},
            ${CbsCmnCpuGenDowncoreCtrl},
            ${CbsCmnCpuGlobalCstateCtrl},
            ${CbsCmnCpuL1streamHwPrefetcher},
            ${CbsCmnCpuL2streamHwPrefetcher},
            ${CbsCmnDeterminismSlider},
            ${CbsCmnGnbNbIommu},
            ${CbsCmnMemCtrlBankGroupSwapDdr4},
            ${CbsCmnMemMapBankInterleaveDdr4},
            ${CbsCmncTdpCtl},
            ${CbsDfCmnMemIntlv},
            ${CbsDfCmnMemIntlvSize},
            ${CdnEnable},
            ${CdnSupport},
            ${ChannelInterLeave},
            ${CkeLowPolicy},
            ${ClosedLoopThermThrotl},
            ${CmciEnable},
            ${ConfigTdp},
            ${ConsoleRedirection},
            ${CoreMultiProcessing},
            ${CpuEnergyPerformance},
            ${CpuFrequencyFloor},
            ${CpuPerformance},
            ${CpuPowerManagement},
            ${DemandScrub},
            ${DirectCacheAccess},
            ${DramClockThrottling},
            ${DramRefreshRate},
            ${EnergyEfficientTurbo},
            ${EngPerfTuning},
            ${EnhancedIntelSpeedStepTech},
            ${EppProfile},
            ${ExecuteDisableBit},
            ${ExtendedApic},
            ${FlowControl},
            ${Frb2enable},
            ${HardwarePrefetch},
            ${HwpmEnable},
            ${ImcInterleave},
            ${IntelHyperThreadingTech},
            ${IntelTurboBoostTech},
            ${IntelVirtualizationTechnology},
            ${IntelVtForDirectedIo},
            ${IntelVtdCoherencySupport},
            ${IntelVtdInterruptRemapping},
            ${IntelVtdPassThroughDmaSupport},
            ${IntelVtdatsSupport},
            ${IohErrorEnable},
            ${IohResource},
            ${IpPrefetch},
            ${Ipv6pxe},
            ${KtiPrefetch},
            ${LegacyOsRedirection},
            ${LegacyUsbSupport},
            ${LlcPrefetch},
            ${LomPort0state},
            ${LomPort1state},
            ${LomPort2state},
            ${LomPort3state},
            ${LomPortsAllState},
            ${LvDdrMode},
            ${MakeDeviceNonBootable},
            ${MemoryInterLeave},
            ${MemoryMappedIoAbove4gb},
            ${MirroringMode},
            ${MmcfgBase},
            ${NumaOptimized},
            ${Onboard10gbitLom},
            ${OnboardGbitLom},
            ${OnboardScuStorageSupport},
            ${OnboardScuStorageSwStack},
            ${Organization},
            ${OsBootWatchdogTimer},
            ${OsBootWatchdogTimerPolicy},
            ${OsBootWatchdogTimerTimeout},
            ${OutOfBandMgmtPort},
            ${PackageCstateLimit},
            ${PatrolScrub},
            ${PatrolScrubDuration},
            ${PcIeSsdHotPlugSupport},
            ${PchUsb30mode},
            ${PciOptionRoMs},
            ${PciRomClp},
            ${PopSupport},
            ${PostErrorPause},
            ${ProcessorC1e},
            ${ProcessorC3report},
            ${ProcessorC6report},
            ${ProcessorCstate},
            ${Profiles},
            ${Psata},
            ${PstateCoordType},
            ${PuttyKeyPad},
            ${PwrPerfTuning},
            ${QpiLinkFrequency},
            ${QpiSnoopMode},
            ${RankInterLeave},
            ${RedirectionAfterPost},
            ${SataModeSelect},
            ${SelectMemoryRasConfiguration},
            ${SerialPortAenable},
            ${SinglePctlEnable},
            ${Slot10linkSpeed},
            ${Slot10state},
            ${Slot11linkSpeed},
            ${Slot11state},
            ${Slot12linkSpeed},
            ${Slot12state},
            ${Slot1linkSpeed},
            ${Slot1state},
            ${Slot2linkSpeed},
            ${Slot2state},
            ${Slot3linkSpeed},
            ${Slot3state},
            ${Slot4linkSpeed},
            ${Slot4state},
            ${Slot5linkSpeed},
            ${Slot5state},
            ${Slot6linkSpeed},
            ${Slot6state},
            ${Slot7linkSpeed},
            ${Slot7state},
            ${Slot8linkSpeed},
            ${Slot8state},
            ${Slot9linkSpeed},
            ${Slot9state},
            ${SlotFlomLinkSpeed},
            ${SlotFrontNvme1linkSpeed},
            ${SlotFrontNvme2linkSpeed},
            ${SlotFrontSlot5linkSpeed},
            ${SlotFrontSlot6linkSpeed},
            ${SlotHbaLinkSpeed},
            ${SlotHbaState},
            ${SlotLom1link},
            ${SlotLom2link},
            ${SlotMezzState},
            ${SlotMlomLinkSpeed},
            ${SlotMlomState},
            ${SlotMraidLinkSpeed},
            ${SlotMraidState},
            ${SlotN10state},
            ${SlotN11state},
            ${SlotN12state},
            ${SlotN13state},
            ${SlotN14state},
            ${SlotN15state},
            ${SlotN16state},
            ${SlotN17state},
            ${SlotN18state},
            ${SlotN19state},
            ${SlotN1state},
            ${SlotN20state},
            ${SlotN21state},
            ${SlotN22state},
            ${SlotN23state},
            ${SlotN24state},
            ${SlotN2state},
            ${SlotN3state},
            ${SlotN4state},
            ${SlotN5state},
            ${SlotN6state},
            ${SlotN7state},
            ${SlotN8state},
            ${SlotN9state},
            ${SlotRaidLinkSpeed},
            ${SlotRaidState},
            ${SlotRearNvme1linkSpeed},
            ${SlotRearNvme1state},
            ${SlotRearNvme2linkSpeed},
            ${SlotRearNvme2state},
            ${SlotRearNvme3state},
            ${SlotRearNvme4state},
            ${SlotRearNvme5state},
            ${SlotRearNvme6state},
            ${SlotRearNvme7state},
            ${SlotRearNvme8state},
            ${SlotRiser1linkSpeed},
            ${SlotRiser1slot1linkSpeed},
            ${SlotRiser1slot2linkSpeed},
            ${SlotRiser1slot3linkSpeed},
            ${SlotRiser2linkSpeed},
            ${SlotRiser2slot4linkSpeed},
            ${SlotRiser2slot5linkSpeed},
            ${SlotRiser2slot6linkSpeed},
            ${SlotSasState},
            ${SlotSsdSlot1linkSpeed},
            ${SlotSsdSlot2linkSpeed},
            ${Smee},
            ${SmtMode},
            ${Snc},
            ${SparingMode},
            ${SrIov},
            ${StreamerPrefetch},
            ${SvmMode},
            ${TerminalType},
            ${TpmControl},
            ${TpmSupport},
            ${TxtSupport},
            ${UcsmBootOrderRule},
            ${UsbEmul6064},
            ${UsbPortFront},
            ${UsbPortInternal},
            ${UsbPortKvm},
            ${UsbPortRear},
            ${UsbPortSdCard},
            ${UsbPortVmedia},
            ${UsbXhciSupport},
            ${VgaPriority},
            ${VmdEnable},
            ${WorkLoadConfig},
            ${XptPrefetch}
        )
    }
}
