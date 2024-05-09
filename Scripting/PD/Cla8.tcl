set search_path "/synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/synopsys/models"
set link_library "saed90nm_typ.db saed90nm_min.db saed90nm_max.db"
set target_library "saed90nm_max.db"
set_tlu_plus_files   -max_tluplus /synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/process/star_rcxt/tluplus/saed90nm_1p9m_1t_Cmax.tluplus  -min_tluplus /synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/process/star_rcxt/tluplus/saed90nm_1p9m_1t_Cmin.tluplus  -tech2itf_map  /synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/process/astro/tech/tech2itf.map
create_mw_lib  -technology /synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/process/astro/tech/astroTechFile.tf -mw_reference_library {/synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/process/astro/fram/saed90nm_fr} -bus_naming_style {[%d]}  /home/grad/siu856512759/Desktop/ECE520/Lab7/Synopsys/Cla8.mw
set_mw_lib_reference  -mw_reference_library {/synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/process/astro/fram/saed90nm_fr} /home/grad/siu856512759/Desktop/ECE520/Lab4/Synopsys/Cla8.mw/
open_mw_lib /home/grad/siu856512759/Desktop/ECE520/Lab4/Synopsys/Cla8.mw/
read_verilog -top Cla8 {/home/grad/siu856512759/Desktop/ECE520/Lab4/Synopsys/Cla8.v}
link
initialize_floorplan -core_utilization 0.816327 -start_first_row -flip_first_row -left_io2core 1.0 -bottom_io2core 2.0 -right_io2core 1.0 -top_io2core 2.0
derive_pg_connection -power_net {VDD} -ground_net {VSS} -tie
create_rectangular_rings  -nets  {VDD VSS}
place_opt
set_net_routing_layer_constraints   {*}   -min_layer M1  -max_layer M6
route_opt
verify_zrt_route
report_constraint -all_violators > Cla8con.rpt
report_area > Cla8area.rpt
