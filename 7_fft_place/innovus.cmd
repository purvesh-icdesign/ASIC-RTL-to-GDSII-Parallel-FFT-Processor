#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Apr 16 19:38:29 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /home/vlsilab/Music/FFT/FFT/6_fft_powerplan/fft_8_top_Powerplan.enc.dat fft_8_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
fit
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort high -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 0 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design
zoomBox -249.21100 284.34800 2013.77200 1594.78300
zoomBox -95.92000 374.77200 1827.61700 1488.64200
zoomBox 267.59000 576.42200 1448.88400 1260.47900
zoomBox 437.89900 671.23500 1291.38600 1165.46700
zoomBox 609.00300 766.68900 1133.15200 1070.21000
zoomBox 714.08100 825.31000 1035.97600 1011.71100
zoomBox 760.49000 851.20000 993.05800 985.87400
zoomBox 801.44800 873.54000 944.27500 956.24700
zoomBox 819.53700 883.40600 922.73000 943.16200
zoomBox 760.48800 851.19800 993.05900 985.87400
zoomBox 477.09300 696.61900 1330.59200 1190.85800
zoomBox 232.33200 563.11300 1622.11300 1367.89900
zoomBox -348.49000 246.30100 2313.89500 1788.01900
zoomBox -815.19900 -8.26700 2869.76400 2125.59900
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 500 -prefix fft_8_top_preCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
saveDesign fft_8_top_Placement.enc
