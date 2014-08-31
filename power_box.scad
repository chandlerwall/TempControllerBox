include <config.scad>

module power_box()
{
    translate([-1, -1])
    union(){
        translate([1, 1])
        linear_extrude(height=power_box_z)
            minkowski(){
                square([power_box_x, power_box_y]);
                circle(r=1);
            }

        translate([power_box_x / 2, -8, power_box_z - 1])
        linear_extrude(height=1)
            difference()
            {
                circle(r=4);
                circle(r=2);
            }

        translate([power_box_x / 2, power_box_y + 2 + 8, power_box_z - 1])
        linear_extrude(height=1)
            difference()
            {
                circle(r=4);
                circle(r=2);
            }
    }
}
