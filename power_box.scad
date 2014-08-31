include <config.scad>

module power_box()
{
    translate([0, (power_box_full_wo - power_box_full_wi)/2, 0])
    translate([0, power_box_hole_offset_i, 0])
    translate([1, 2, 0])
        linear_extrude(height=power_box_z)
            union(){
                minkowski(){
                    square([power_box_x - 2, power_box_y - 2]);
                    circle(r=1);
                }

                translate([(power_box_x - 2) / 2, -power_box_hole_offset_i, 0])
                    circle(r=power_box_ri);
                    *difference()
                    {
                        circle(r=power_box_ro);
                        circle(r=power_box_ri);
                    }

                translate([(power_box_x - 2) / 2, power_box_y + power_box_hole_offset_i, 0])
                    circle(r=power_box_ri);
                    *difference()
                    {
                        circle(r=power_box_ro);
                        circle(r=power_box_ri);
                    }
            }

    %square([power_box_x, power_box_full_wo]);
}
