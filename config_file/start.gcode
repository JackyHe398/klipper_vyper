;*** Start Dual Nozzle/Bed Preheating ***
M140 S{material_bed_temperature_layer_0}
M104 S{material_print_temperature_layer_0}
G28 ; home
BED_MESH_PROFILE LOAD=default
M190 S{material_bed_temperature_layer_0}
M109 S{material_print_temperature_layer_0}
;*** End Preheating ***
G28
G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
M106 S255
M300 S1318 P266
G0 Z0.0
G92 E0 ;zero the extruded length
G1 X60 E38 F400 ; Extrude 25mm of filament in a 4cm line. Reduce speed (F) if you have a nozzle smaller than 0.4mm!
G92 E0 ;zero the extruded length again
G1 E-1 F500 ; Retract a little
G1 Y1 F4000 ; Quickly wipe away from the filament line
G1 Z0.2
M117 ; Printing…
G5
