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
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7k160tffg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.cache/wt [current_project]
set_property parent.project_path D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/ADC32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/ALU.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/new/DataPath.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/new/ImmGen.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/MUX2T1_32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/new/MUX4T1_32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/MUX8T1_32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/new/REG32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/new/SCPU_ctrl.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/SignalExt_32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/add_32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/and32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/nor32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/or32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/or_bit_32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/project1/Exp01_Reg/Exp01_Reg.srcs/sources_1/new/regs.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/srl32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/xor32.v
  D:/14.7/LabofCOAD/project4/OExp04-Datapath/OExp04-Datapath.srcs/sources_1/imports/new/SCPU.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top SCPU -part xc7k160tffg676-2L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef SCPU.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file SCPU_utilization_synth.rpt -pb SCPU_utilization_synth.pb"
