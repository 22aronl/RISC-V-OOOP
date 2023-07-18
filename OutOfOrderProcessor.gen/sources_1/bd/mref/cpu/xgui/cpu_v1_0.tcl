# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LOG_ROB_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROB_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.LOG_ROB_SIZE { PARAM_VALUE.LOG_ROB_SIZE } {
	# Procedure called to update LOG_ROB_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOG_ROB_SIZE { PARAM_VALUE.LOG_ROB_SIZE } {
	# Procedure called to validate LOG_ROB_SIZE
	return true
}

proc update_PARAM_VALUE.ROB_SIZE { PARAM_VALUE.ROB_SIZE } {
	# Procedure called to update ROB_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROB_SIZE { PARAM_VALUE.ROB_SIZE } {
	# Procedure called to validate ROB_SIZE
	return true
}


proc update_MODELPARAM_VALUE.ROB_SIZE { MODELPARAM_VALUE.ROB_SIZE PARAM_VALUE.ROB_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROB_SIZE}] ${MODELPARAM_VALUE.ROB_SIZE}
}

proc update_MODELPARAM_VALUE.LOG_ROB_SIZE { MODELPARAM_VALUE.LOG_ROB_SIZE PARAM_VALUE.LOG_ROB_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOG_ROB_SIZE}] ${MODELPARAM_VALUE.LOG_ROB_SIZE}
}

