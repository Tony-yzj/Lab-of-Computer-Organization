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
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.cache/wt [current_project]
set_property parent.project_path C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/IP/Supplementary [current_project]
set_property ip_output_repo c:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files c:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/I_mem.coe
read_verilog -library xil_defaultlib {
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/Counter_x.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/MIO_BUS.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/Multi_8CH32.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/RAM_B.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/SAnti_jitter.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/CPU/SCPU.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/SPIO.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/VGA.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/clk_div.v
  C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/new/CSSTE.v
}
read_ip -quiet c:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/ip/SSeg7_Dev_0/SSeg7_Dev_0.xci

read_ip -quiet c:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/ip/ROM_D_0/ROM_D_0.xci
set_property used_in_implementation false [get_files -all c:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/ip/ROM_D_0/ROM_D_0_ooc.xdc]

read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/VGA.edf
read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/Counter_x.edf
read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/SAnti_jitter.edf
read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/clk_div.edf
read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/SPIO.edf
read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/Multi_8CH32.edf
read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/MIO_BUS.edf
read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/RAM_B.edf
read_edif C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/sources_1/imports/CPU/SCPU.edf
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/Org-Sword.xdc
set_property used_in_implementation false [get_files C:/Users/ASUS/Desktop/teacher/OExp02-IP2SOC/OExp02-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/Org-Sword.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top CSSTE -part xc7k160tffg676-2L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef CSSTE.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file CSSTE_utilization_synth.rpt -pb CSSTE_utilization_synth.pb"
