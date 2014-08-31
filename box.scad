include <config.scad>
use <temp_control_box.scad>
use <power_box.scad>

module box()
{
    temp_control_box();
    translate([
        100,
        temp_control_bezel_w - power_box_y - (temp_control_bezel_w - temp_control_box_y) / 2,
        temp_control_bezel_h - power_box_z - (temp_control_bezel_h - temp_control_box_z) / 2])
        power_box();
}
