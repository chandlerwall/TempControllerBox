include <config.scad>

module power_box()
{
    linear_extrude(height=power_box_z)
        minkowski(){
            square([power_box_x - 1, power_box_y - 1]);
            circle(r=1);
        }
}
