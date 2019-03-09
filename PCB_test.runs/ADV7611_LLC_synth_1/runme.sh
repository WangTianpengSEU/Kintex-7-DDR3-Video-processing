#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=E:/VIVADO_17_4/SDK/2017.4/bin;E:/VIVADO_17_4/Vivado/2017.4/ids_lite/ISE/bin/nt64;E:/VIVADO_17_4/Vivado/2017.4/ids_lite/ISE/lib/nt64:E:/VIVADO_17_4/Vivado/2017.4/bin
else
  PATH=E:/VIVADO_17_4/SDK/2017.4/bin;E:/VIVADO_17_4/Vivado/2017.4/ids_lite/ISE/bin/nt64;E:/VIVADO_17_4/Vivado/2017.4/ids_lite/ISE/lib/nt64:E:/VIVADO_17_4/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='H:/Desktop/Video_new_PCB/PCB_test_project/PCB_test_DDR3_ok1/PCB_test/PCB_test.runs/ADV7611_LLC_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ADV7611_LLC.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ADV7611_LLC.tcl
