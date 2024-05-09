set_attribute lib_search_path /cadence/GPDK/osu_stdcells/lib/tsmc018/signalstorm
set_attribute library osu018_stdcells.lib
man set_attribute
read_hdl -vhdl c17.vhd
elaborate
synthesize -to_generic
synthesize -to_mapped
write_hdl -generic c17 > c17Gen.v
write_hdl -mapped c17 > c17Map.v
report area > areac17.rep
report power > powerc17.rep
report timing > timingc17.rep

set_attribute drc_first true 

set_attribute avoid true OAI21X1
synthesize -to_mapped
report area > areac17OAI.rep
report power > powerc17OAI.rep
report timing > timingc17OAI.rep

set_attribute avoid false OAI21X1
synthesize -to_mapped

set_attribute avoid true NAND2X1
synthesize -to_mapped
report area > areac17NAND.rep
report power > powerc17NAND.rep
report timing > timingc17NAND.rep

set_attribute avoid false NAND2X1
synthesize -to_mapped

set_attribute avoid true INVX1
synthesize -to_mapped
report area > areac17INV.rep
report power > powerc17INV.rep
report timing > timingc17INV.rep

set_attribute avoid false INVX1
synthesize -to_mapped



