#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr 28 16:59:52 2026                
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
restoreDesign /home/vlsilab/Music/FFT/FFT/9_fft_route/routing/fft_8_top_routing_with_filler.enc.dat fft_8_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report fft_8_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
verifyProcessAntenna -report fft_8_top.antenna.rpt -error 1000
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 500 -prefix fft_8_top_signOff -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -hold -pathReports -slackReports -numPaths 500 -prefix fft_8_top_signOff -outDir timingReports
checkDesign -io -netlist -physicalLibrary -powerGround -tieHilo -timingLibrary -spef -floorplan -place -outdir checkDesign
zoomBox -191.84700 363.55800 2470.48800 1905.24700
zoomBox 75.42600 543.90200 2338.41200 1854.33800
zoomBox 494.20500 826.73800 2129.21200 1773.52800
zoomBox 654.95300 938.08100 2044.70900 1742.85300
zoomBox 791.58800 1032.72300 1972.88100 1716.77900
zoomBox 907.72700 1113.16900 1911.82700 1694.61700
zoomBox 1161.68200 1289.07400 1778.32500 1646.15600
zoomBox 1317.60200 1397.06100 1696.29800 1616.35400
zoomBox 1355.03900 1421.99600 1676.93100 1608.39500
zoomBox 1436.89900 1476.51900 1634.58200 1590.99200
zoomBox 1472.75600 1500.36900 1615.58200 1583.07600
zoomBox 1498.42400 1516.59200 1601.61600 1576.34800
zoomBox 1517.00300 1529.17900 1591.56000 1572.35300
zoomBox 1524.25900 1534.09500 1587.63300 1570.79300
zoomBox 1530.42600 1538.67900 1584.29500 1569.87300
zoomBox 1539.98100 1546.17500 1578.90200 1568.71300
zoomBox 1546.87700 1551.58400 1574.99900 1567.86900
zoomBox 1549.53200 1553.57000 1573.43600 1567.41200
zoomBox 1553.79100 1556.66000 1571.06300 1566.66200
zoomBox 1555.45600 1557.86600 1570.13800 1566.36800
zoomBox 1558.10200 1559.77400 1568.71000 1565.91700
zoomBox 1553.77500 1556.61500 1571.05100 1566.61900
zoomBox 1546.73100 1551.47000 1574.86400 1567.76100
zoomBox 1535.26000 1543.09200 1581.07200 1569.62100
zoomBox 1517.96600 1529.90100 1592.56600 1573.10000
zoomBox 1506.76100 1516.21500 1610.01200 1576.00500
zoomBox 1487.83700 1486.25300 1655.96800 1583.61300
zoomBox 1480.96800 1472.46200 1678.76900 1587.00300
zoomBox 1464.29400 1437.10200 1738.06700 1595.63700
zoomBox 1441.21400 1388.16200 1820.14000 1607.58800
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
fit
zoomBox -525.73000 33.36300 2136.60500 1575.05200
zoomBox -177.31700 164.32600 1457.69100 1111.11700
zoomBox 36.65200 244.75300 1040.75300 826.20200
zoomBox 168.05500 294.14500 784.70200 651.22900
zoomBox 284.39300 337.87400 558.00400 496.31500
zoomBox 310.14200 347.55300 507.82700 462.02700
zoomBox 328.74600 354.54600 471.57400 437.25400
zoomBox 341.30600 359.98000 444.49900 419.73600
zoomBox 353.92400 365.43900 417.29800 402.13700
zoomBox 359.56000 368.05000 405.34900 394.56500
zoomBox 363.68400 369.95800 396.76700 389.11600
zoomBox 366.75100 371.34800 390.65600 385.19100
zoomBox 368.02200 371.79000 388.34200 383.55700
zoomBox 370.77900 372.74700 383.25900 379.97400
zoomBox 371.90500 373.21300 380.92300 378.43500
zoomBox 372.72700 373.63500 379.24400 377.40900
zoomBox 373.32000 373.96000 378.02900 376.68700
zoomBox 373.74400 374.20100 377.14600 376.17100
zoomBox 374.05000 374.37500 376.50900 375.79900
zoomBox 374.36300 374.55700 375.87400 375.43200
zoomBox 374.55500 374.67200 375.48500 375.21100
zoomBox 373.73500 374.38200 375.51700 375.41400
zoomBox 373.12100 374.14900 375.58700 375.57700
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
zoomBox 373.50800 515.24500 376.40900 516.92500
zoomBox 373.09200 515.07500 376.50600 517.05200
zoomBox 372.60300 514.87500 376.62000 517.20100
zoomBox 372.02700 514.64000 376.75400 517.37700
zoomBox 371.35000 514.36300 376.91200 517.58400
zoomBox 370.55400 514.03800 377.09700 517.82700
zoomBox 369.61700 513.65500 377.31500 518.11300
zoomBox 368.45000 513.17800 377.50800 518.42300
zoomBox 367.07800 512.61600 377.73500 518.78700
zoomBox 363.56500 511.17800 378.31600 519.72000
zoomBox 365.48700 511.94000 378.02600 519.20100
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
zoomBox 358.64100 565.85400 379.05800 577.67700
zoomBox 347.49400 561.43300 380.74000 580.68500
zoomBox 329.26700 554.22300 383.40300 585.57200
zoomBox 298.89200 542.19600 387.04300 593.24200
zoomBox 248.46600 521.38000 392.00600 604.50000
zoomBox 84.19100 453.31000 407.69800 640.64400
zoomBox -101.35700 376.42500 425.42200 681.46900
zoomBox -403.49000 251.23200 454.28200 747.94500
zoomBox -541.66300 193.97900 467.48000 778.34700
zoomBox -287.39000 244.66500 441.71500 666.87100
zoomBox -32.43900 295.08000 415.32400 554.36800
zoomBox 119.82700 324.30300 394.81100 483.53900
zoomBox 287.50000 357.39300 375.65500 408.44100
zoomBox 310.13200 361.51600 373.82500 398.39900
panPage 1 0
zoomBox 341.85900 364.68700 387.87800 391.33500
zoomBox 351.70300 367.46600 384.95300 386.72000
zoomBox 358.79400 369.53000 382.81700 383.44100
zoomBox 348.31900 365.69800 387.43800 388.35100
zoomBox 359.14800 369.66700 383.17400 383.58000
zoomBox 361.66300 370.55500 382.08700 382.38200
zoomBox 365.42900 371.68700 380.18500 380.23200
zoomBox 368.02800 372.47700 378.69000 378.65100
zoomBox 369.93100 373.05700 377.63500 377.51800
zoomBox 370.68600 373.34400 377.23400 377.13600
zoomBox 366.82000 371.79000 379.36600 379.05500
zoomBox 356.68100 367.71300 384.95600 384.08600
zoomBox 326.57900 355.61000 401.55000 399.02400
zoomBox 246.76600 323.52100 445.55100 438.63200
zoomBox -525.96400 12.84100 871.55900 822.11000
zoomBox -2013.72300 -585.31600 1691.76900 1560.43800
zoomBox -5008.46100 -1789.35900 3342.78600 3046.63100
zoomBox -8391.01000 -3149.32000 5207.60400 4725.28300
fit
reset_parasitics
extractRC
rcOut -spef fft_8_top.spef -rc_corner rc_best
streamOut FFT.gds -mapFile ../streamout_innovous_6M1L.map -libName DesignLib -units 1000 -mode ALL
saveNetlist -includePowerGround ./signoff/fft_signoff_withPG.v
saveNetlist ./signoff/fft_signoff_withoutPG.v
write_sdf -version 2.1 -edges noedge -recrem split setuphold merge_when_paired ./signoff/fft_postroute_with_pad_delay.sdf
write_sdf -version 2.1 \
          -edges noedge \
          -recrem split \
          -setuphold split \
          ./signoff/fft_postroute_with_pad_delay.sdf
saveDesign fft_8_top_signoff.enc
