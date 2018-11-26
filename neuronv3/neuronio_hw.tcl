# TCL File Generated by Component Editor 18.1
# Wed Nov 07 14:48:17 BRST 2018
# DO NOT MODIFY


# 
# neuronio_in "neuronio_in" v1.0
#  2018.11.07.14:48:17
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module neuronio_in
# 
set_module_property DESCRIPTION ""
set_module_property NAME neuronio_in
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME neuronio_in
set_module_property INSTANTIATE_IN_SYSTEM_MODULE false
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 

# 
# parameters
# 
add_parameter n INTEGER 7
set_parameter_property n DEFAULT_VALUE 7
set_parameter_property n DISPLAY_NAME n
set_parameter_property n TYPE INTEGER
set_parameter_property n UNITS None
set_parameter_property n ALLOWED_RANGES -2147483648:2147483647
set_parameter_property n AFFECTS_GENERATION false
set_parameter_property n HDL_PARAMETER true


# 
# display items
# 


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock ""
set_interface_property avalon_slave_0 associatedReset ""
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 slv_Xin beginbursttransfer Input "(n) - (0) + 1"
add_interface_port avalon_slave_0 slv_Win beginbursttransfer Input "(n) - (0) + 1"
add_interface_port avalon_slave_0 RST beginbursttransfer Input 1
add_interface_port avalon_slave_0 O readdata Output 16
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1
