# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Dell/Desktop/Vivado/Somador_display7seg/Somador_display7seg.cache/wt [current_project]
set_property parent.project_path C:/Users/Dell/Desktop/Vivado/Somador_display7seg/Somador_display7seg.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Dell/Desktop/Vivado/Display7/Display7.srcs/sources_1/new/display.vhd
  C:/Users/Dell/Desktop/Vivado/Somador_display7seg/Somador_display7seg.srcs/sources_1/new/contador_d.vhd
  C:/Users/Dell/Desktop/Vivado/Somador_display7seg/Somador_display7seg.srcs/sources_1/new/cont_display.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top cont_display -part xc7a35tcpg236-1


write_checkpoint -force -noxdef cont_display.dcp

catch { report_utilization -file cont_display_utilization_synth.rpt -pb cont_display_utilization_synth.pb }
