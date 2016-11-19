@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim cont_display_behav -key {Behavioral:sim_1:Functional:cont_display} -tclbatch cont_display.tcl -view C:/Users/Dell/Desktop/Vivado/Somador_display7seg/cont_display_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
