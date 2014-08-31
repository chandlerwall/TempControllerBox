pad = 0.01;
smooth = 32;

$fn = smooth;

// 3d printer configuration (try to match slicer settings)
nozzle_width = 0.6;
layer_h = 0.3;
perimeters = 5;

// Calculate box/plate thicknesses using printer settings
box_plate_t = 6 * layer_h;
box_wall_t = perimeters * nozzle_width;

box_w = 100;
box_l = 140;
box_h = 40;

power_box_x = 32.85;
power_box_y = 68.40;
power_box_z = 25.65;
power_box_ri = 2;
power_box_ro = 4;
power_box_hole_offset = 8;
power_box_full_w = power_box_y + 2*power_box_ro + 2*power_box_hole_offset;

temp_control_box_x = 74.5;
temp_control_box_y = 70;
temp_control_box_z = 28.5;
temp_control_bezel_w = 75;
temp_control_bezel_h = 34.5;
temp_control_bezel_t = 3.5;
