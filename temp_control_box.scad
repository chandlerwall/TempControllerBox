include <config.scad>

module temp_control_box()
{
    union()
    {
        cube(size=[temp_control_bezel_t, temp_control_bezel_w, temp_control_bezel_h]);
        translate([0, (temp_control_bezel_w - temp_control_box_y) / 2, (temp_control_bezel_h - temp_control_box_z) / 2])
            cube(size=[temp_control_box_x, temp_control_box_y, temp_control_box_z]);
    }
}
