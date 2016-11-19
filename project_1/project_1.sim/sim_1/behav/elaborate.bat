@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 4c383d430196439eb2c9fa434c81e39a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot cont_display_behav xil_defaultlib.cont_display -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
