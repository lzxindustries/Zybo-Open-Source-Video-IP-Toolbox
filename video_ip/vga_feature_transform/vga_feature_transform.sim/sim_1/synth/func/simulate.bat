@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim vga_feature_transform_func_synth -key {Post-Synthesis:sim_1:Functional:vga_feature_transform} -tclbatch vga_feature_transform.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0