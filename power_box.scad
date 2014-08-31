include <config.scad>

module power_box()
{
    translate([1, power_box_hole_offset + power_box_ro, 0])
        linear_extrude(height=power_box_z)
            union(){
                minkowski(){
                    square([power_box_x - 2, power_box_y - 2]);
                    circle(r=1);
                }

                translate([(power_box_x - 2) / 2, -power_box_hole_offset, 0])
                    circle(r=power_box_ri);
                    *difference()
                    {
                        circle(r=power_box_ro);
                        circle(r=power_box_ri);
                    }

                translate([(power_box_x - 2) / 2, power_box_y + power_box_hole_offset, 0])
                    circle(r=power_box_ri);
                    *difference()
                    {
                        circle(r=power_box_ro);
                        circle(r=power_box_ri);
                    }
            }

    *square([power_box_x, power_box_full_w]);
}
