#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Apr 16 20:03:22 2026                
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
restoreDesign /home/vlsilab/Music/FFT/FFT/7_fft_place/fft_8_top_Placement.enc.dat fft_8_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
set init_top_cell fft_8_top
set_global report_timing_format {instance arc net cell slew delay arrival required} 
set_analysis_view -setup {worst_case} -hold {best_case} 
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -drouteUseMultiCutViaEffort high
set_ccopt_property buffer_cells {bufbd1 bufbd2 bufbd3 bufbd4 bufbd7 bufbda bufbdf bufbdk}
set_ccopt_property inverter_cells {invbd2 invbd4 invbd7 invbda invbdf invbdk}
setRouteMode -earlyGlobalMaxRouteLayer 6
create_route_type -name leaf_rule -top_preferred_layer 3 -bottom_preferred_layer 1 -preferred_routing_layer_effort high
create_route_type -name trunk_rule -top_preferred_layer 6 -bottom_preferred_layer 4 -preferred_routing_layer_effort high
set_ccopt_property -net_type leaf route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top route_type trunk_rule
set_ccopt_property primary_delay_corner max_delay
set_ccopt_property route_type_autotrim false
create_ccopt_clock_tree_spec -file /home/vlsilab/Music/FFT/FFT/8_fft_cts/fft_8_top_ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin clk_pad true
create_ccopt_clock_tree -name fft_clk -source clk_pad -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -early -clock_tree fft_clk 1.875
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -late -clock_tree fft_clk 3.000
set_ccopt_property source_latency -clock_tree fft_clk 1.250
set_ccopt_property clock_period -pin clk_pad 15
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name fft_clk/all -sources clk_pad -auto_sinks
set_ccopt_property include_source_latency -skew_group fft_clk/all true
set_ccopt_property extracted_from_clock_name -skew_group fft_clk/all fft_clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group fft_clk/all all
set_ccopt_property extracted_from_delay_corners -skew_group fft_clk/all {max_delay min_delay}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ctd_win -id before_ccopt
set_ccopt_property -delay_corner max_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type leaf target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type leaf target_max_trans 2
set_ccopt_property -skew_group fft_clk/all -delay_corner min_delay target_skew 0.5
set_ccopt_property -delay_corner min_delay target_skew 0.5
set_ccopt_property source_driver pc3d01/CIN -clock_tree fft_clk
set_ccopt_property balance_mode cluster
ccopt_design -cts
ctd_win -id cluster_mode
set_ccopt_property balance_mode trial
ccopt_design -cts
ctd_win -id trial_mode
set_ccopt_property balance_mode full
ccopt_design -cts
ctd_win -id full_mode
report_ccopt_clock_trees -summary -file /home/vlsilab/Music/FFT/FFT/8_fft_cts/fft_8_top_clock_trees.rpt
report_ccopt_skew_groups -summary -file /home/vlsilab/Music/FFT/FFT/8_fft_cts/fft_8_top_skew_group.rpt
reportCongestion -overflow -hotSpot > /home/vlsilab/Music/FFT/FFT/8_fft_cts/fft_8_top_congestion.rpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 500 -prefix fft_8_top_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 500 -prefix fft_8_top_postCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS -hold
saveDesign fft_8_top_CTS.enc
