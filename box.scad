include <config.scad>
use <temp_control_box.scad>
use <power_box.scad>

module box_bottom()
{
    difference(){
        rounded_shell();

        // create a hole for the temperature controller
        #translate([-temp_control_bezel_t-pad,(box_w - temp_control_bezel_w)/2,(box_h - temp_control_bezel_h)/2])
            temp_control_box();

        #translate([90, (box_w - power_box_full_wo)/2, -pad])
            power_box();
    }
}

module box_shell()
{
    difference(){
        // the main box (the bottom portion)
        cube(size=[box_l,box_w,box_h]);

        // hollow the interior/top of the box
        translate([box_wall_t/2, box_wall_t/2,box_plate_t + pad])
            cube(size=[box_l - box_wall_t, box_w - box_wall_t, box_h - box_plate_t]);
    }
}

module rounded_shell()
{
    difference(){
        // the main box (the bottom portion)
        rounded_cube(size=[box_l,box_w,box_h], r=5);

        // hollow the interior/top of the box
        translate([box_wall_t/2, box_wall_t/2,box_plate_t + pad])
            rounded_cube(size=[box_l - box_wall_t, box_w - box_wall_t, box_h - box_plate_t], r=5);
    }
}

module rounded_cube(size=[5, 5, 5], r=1)
{
    translate([r,r])
        linear_extrude(height=size[2])
            minkowski()
            {
                square([size[0]-2*r, size[1]-2*r]);
                circle(r=r);
            }
}
