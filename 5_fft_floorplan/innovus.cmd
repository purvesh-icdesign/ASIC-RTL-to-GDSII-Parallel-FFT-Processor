#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Apr 16 17:31:10 2026                
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
save_global Default_2.globals
set init_gnd_net {VSS_CORE VSSO_CORE}
set init_lef_file {/opt/sclpdkv3/scl180/stdcell/fs120/6M1L/lef/scl18fs120_tech.lef /opt/sclpdkv3/scl180/stdcell/fs120/6M1L/lef/scl18fs120_std.lef /opt/sclpdkv3/scl180/iopad/cio150/6M1L/lef/tsl18cio150_6lm.lef}
set init_verilog fft_8_top_incremental.v
set init_mmmc_file fft.view
set init_io_file fft.io
set init_pwr_net {VDD_CORE VDDO_CORE}
init_design
fit
zoomBox 478.44000 402.94700 2362.47100 1493.94000
zoomBox 1173.75700 662.33700 2157.23400 1231.84300
zoomBox 1384.47400 740.94400 2095.03700 1152.41300
zoomBox 1452.79500 772.79700 2056.77400 1122.54600
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -d 1940 1940 125 125 125 125
uiSetTool select
getIoFlowFlag
fit
zoomBox 327.92800 253.56700 2590.91300 1564.00300
zoomBox 613.69200 336.84700 2537.23000 1450.71800
zoomBox 856.59200 407.63400 2491.60000 1354.42500
zoomBox 1087.67600 545.95800 2268.97100 1230.01500
zoomBox 1187.83400 598.16700 2191.93500 1179.61600
zoomBox 1272.33300 642.18300 2125.82000 1136.41500
zoomBox 1344.15800 679.59700 2069.62200 1099.69400
zoomBox 1457.10200 738.42900 1981.25100 1041.95000
zoomBox 1504.42600 763.95900 1949.95300 1021.95200
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side n
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side s
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side w
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side e
selectInst FILLER_E_16
fit
zoomBox -86.69900 190.77500 2575.63400 1732.46300
zoomBox 203.62700 303.88000 2466.61100 1614.31500
zoomBox 626.93500 485.89100 2261.94200 1432.68100
zoomBox 1067.24600 681.12400 2071.34600 1262.57200
zoomBox 1262.61100 767.91500 1988.07400 1188.01200
zoomBox 1409.20900 831.10500 1933.35800 1134.62600
zoomBox 1467.78500 855.83100 1913.31200 1113.82400
zoomBox 1517.57500 876.84800 1896.27300 1096.14200
fit
saveDesign fft_8_top_Floorplan.enc
deselectAll
