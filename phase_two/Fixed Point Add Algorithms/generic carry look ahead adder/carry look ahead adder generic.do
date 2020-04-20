vsim -gui work.carry_look_ahead_generic
# vsim -gui work.carry_look_ahead_generic 
# Start time: 22:46:04 on Apr 20,2020
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.carry_look_ahead_generic(behavioral)
# Loading work.partial_full_adder(behavioral)
add wave -position insertpoint sim:/carry_look_ahead_generic/*
# ** Warning: (vsim-WLF-5000) WLF file currently in use: vsim.wlf
#           File in use by: ESLAM ELECTRONICS  Hostname: DESKTOP-EKFC7R1  ProcessID: 6360
#           Attempting to use alternate WLF file "./wlftc5r0az".
# ** Warning: (vsim-WLF-5001) Could not open WLF file: vsim.wlf
#           Using alternate file: ./wlftc5r0az
force -freeze sim:/carry_look_ahead_generic/Cin 0 0
force -freeze sim:/carry_look_ahead_generic/A 0000000000000000 0
force -freeze sim:/carry_look_ahead_generic/B 0000000000000000 0
force -freeze sim:/carry_look_ahead_generic/Cin 0 0
run
force -freeze sim:/carry_look_ahead_generic/A 1111111111111111 0
run
force -freeze sim:/carry_look_ahead_generic/A 1111111111111111 0
force -freeze sim:/carry_look_ahead_generic/B 1111111111111111 0
force -freeze sim:/carry_look_ahead_generic/A 0000000000000000 0
run
force -freeze sim:/carry_look_ahead_generic/A 1111111111111111 0
run
force -freeze sim:/carry_look_ahead_generic/A 1010101010101010 0
run
force -freeze sim:/carry_look_ahead_generic/B 0010010010010010 0
run
force -freeze sim:/carry_look_ahead_generic/A 1100100011111010 0
force -freeze sim:/carry_look_ahead_generic/B 0010110100010111 0
run
force -freeze sim:/carry_look_ahead_generic/A 1000000000000001 0
force -freeze sim:/carry_look_ahead_generic/B 1000000000000001 0
run
force -freeze sim:/carry_look_ahead_generic/A 0111111111111111 0
force -freeze sim:/carry_look_ahead_generic/B 0111111111111111 0
run
force -freeze sim:/carry_look_ahead_generic/A 1011111111111111 0
force -freeze sim:/carry_look_ahead_generic/B 1111111111111111 0
run
force -freeze sim:/carry_look_ahead_generic/A 1000000000000001 0
run
force -freeze sim:/carry_look_ahead_generic/A 0000000000000001 0
run
force -freeze sim:/carry_look_ahead_generic/A 1010000000000001 0
force -freeze sim:/carry_look_ahead_generic/B 1011111111111111 0
run


