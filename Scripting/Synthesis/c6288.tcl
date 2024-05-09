set_attribute lib_search_path /cadence/GPDK/osu_stdcells/lib/tsmc018/signalstorm
set_attribute library osu018_stdcells.lib
read_hdl c6288.v
elaborate
synthesize -to_generic
synthesize -to_mapped
write_hdl -generic c6288 > c6288Gen.v
write_hdl -mapped c6288 > c6288Map.v
report area > areac6288md.rep
report power > powerc6288md.rep
report timing > timingc6288md.rep

set_attribute drc_first true

set_attribute avoid true AOI21X1
synthesize -to_mapped -effort high
report area > areacc6288AOIhigh.rep
report power > powercc6288AOIhigh.rep
report timing > timingc6288AOIhigh.rep
set_attribute avoid false AOI21X1
synthesize -to_mapped -effort high

set_attribute drc_first true
set_attribute avoid true NAND2X1
synthesize -to_mapped
report area > areacc6288NANDhigh.rep
report power > powercc6288NANDhigh.rep
report timing > timingc6288NANDhigh.rep
set_attribute avoid false NAND2X1
synthesize -to_mapped -effort high

set_attribute drc_first true
set_attribute avoid true OR2X2
synthesize -to_mapped
report area > areacc6288ORhigh.rep
report power > powercc6288ORhigh.rep
report timing > timingc6288ORhigh.rep
set_attribute avoid false OR2X2
synthesize -to_mapped -effort high
