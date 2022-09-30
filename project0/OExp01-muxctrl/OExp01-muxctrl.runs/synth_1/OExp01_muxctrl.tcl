# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7k160tffg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.cache/wt} [current_project]
set_property parent.project_path {D:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {d:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  {D:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.srcs/sources_1/imports/new/MUX2T1_5.v}
  {D:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.srcs/sources_1/imports/new/MUX4T1_5.v}
  {D:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.srcs/sources_1/imports/new/MUX8T1_32.v}
  {D:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.srcs/sources_1/new/OExp01_muxctrl.v}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.srcs/constrs_1/imports/reference muxctrl/muxctrl.xdc}}
set_property used_in_implementation false [get_files {{D:/1My Vault/2022 spring/Lab of COAD/project0/OExp01-muxctrl/OExp01-muxctrl.srcs/constrs_1/imports/reference muxctrl/muxctrl.xdc}}]


synth_design -top OExp01_muxctrl -part xc7k160tffg676-2L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef OExp01_muxctrl.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file OExp01_muxctrl_utilization_synth.rpt -pb OExp01_muxctrl_utilization_synth.pb"
