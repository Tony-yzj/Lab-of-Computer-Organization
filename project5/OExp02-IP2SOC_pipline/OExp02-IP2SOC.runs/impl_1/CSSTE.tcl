# 
# Report generation script generated by Vivado
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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param general.maxThreads 8
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xc7k160tffg676-2L
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.cache/wt [current_project]
  set_property parent.project_path D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.xpr [current_project]
  set_property ip_repo_paths {{D:/14.7/LabofCOAD/project2/Lab02 CPU实验环境搭建/Lab02 CPU实验环境搭建（学生版）/OExp02-IP2SOC/IP/Supplementary}} [current_project]
  set_property ip_output_repo D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.runs/synth_1/CSSTE.dcp
  read_ip -quiet D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/ip/SSeg7_Dev_0/SSeg7_Dev_0.xci
  read_ip -quiet d:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/ip/ROM_P/ROM_P.xci
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/IP/Supplementary/Counter_x.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/IP/Supplementary/SAnti_jitter.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/IP/Supplementary/clk_div.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/IP/Supplementary/SPIO.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/IP/Supplementary/Multi_8CH32.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/IP/Supplementary/MIO_BUS.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/Supplementary/RAM_B.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/Pipeline_WB.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/Mem_reg_WB.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/Pipeline_Mem.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/Ex_reg_Mem.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/Pipeline_Ex.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/ID_reg_Ex.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/Pipeline_ID.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/IF_reg_ID.edf
  read_edif D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/sources_1/imports/OExp05_Pipeline_CPU_example/Pipeline_IF.edf
  read_xdc D:/14.7/LabofCOAD/project5/OExp02-IP2SOC_pipline/OExp02-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/Org-Sword.xdc
  link_design -top CSSTE -part xc7k160tffg676-2L
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force CSSTE_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file CSSTE_drc_opted.rpt -pb CSSTE_drc_opted.pb -rpx CSSTE_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force CSSTE_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file CSSTE_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file CSSTE_utilization_placed.rpt -pb CSSTE_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file CSSTE_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force CSSTE_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file CSSTE_drc_routed.rpt -pb CSSTE_drc_routed.pb -rpx CSSTE_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file CSSTE_methodology_drc_routed.rpt -pb CSSTE_methodology_drc_routed.pb -rpx CSSTE_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file CSSTE_power_routed.rpt -pb CSSTE_power_summary_routed.pb -rpx CSSTE_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file CSSTE_route_status.rpt -pb CSSTE_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file CSSTE_timing_summary_routed.rpt -rpx CSSTE_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file CSSTE_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file CSSTE_clock_utilization_routed.rpt"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force CSSTE_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force CSSTE.mmi }
  write_bitstream -force CSSTE.bit 
  catch {write_debug_probes -quiet -force CSSTE}
  catch {file copy -force CSSTE.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

