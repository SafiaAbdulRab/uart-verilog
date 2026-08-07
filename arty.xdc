set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { load }]; #IO_L13P_T2_MRCC_16 Sch=sw[1].
set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]

set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { btn0 }]; #IO_L6N_T0_VREF_16 Sch=btn[0]
set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { btn1 }]; #IO_L11P_T1_SRCC_16 Sch=btn[1]

set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { data[0] }]; #IO_L24N_T3_35 Sch=led[4]
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { data[1] }]; #IO_25_35 Sch=led[5]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { data[2] }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { data[3] }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]
