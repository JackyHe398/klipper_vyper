M104 S0 ; turn off extruder
M140 S0 ; turn off bed
M107
G91 ;relative positioning
G1 E-1 F300 ;retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+1 E-5 ;X-20 Y-20 F{speed_travel} ;move Z up a bit and retract filament even more
G28 X0;move X to min endstops, so the head is out of the way
G90
G1 Y200 f4800
M84 ;steppers off
M300 S1318 P266
