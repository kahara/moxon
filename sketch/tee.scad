stub_diameter_max = 17.0;
stub_diameter_min = 15.0;
stub_length = 60.0;

plate_length = 35.0 * 2.0;
plate_width = 35.0;
plate_depth = 6.0;

mount_hole_diameter = 4.5;

difference() {
    cube([plate_length, plate_width, plate_depth]);
    
    translate([15, 7.5, 0])
    cylinder(plate_depth, mount_hole_diameter/2, mount_hole_diameter/2);

    translate([15, 27.5, 0])
    cylinder(plate_depth, mount_hole_diameter/2, mount_hole_diameter/2);

    translate([55, 7.5, 0])
    cylinder(plate_depth, mount_hole_diameter/2, mount_hole_diameter/2);

    translate([55, 27.5, 0])
    cylinder(plate_depth, mount_hole_diameter/2, mount_hole_diameter/2);
}

translate([plate_length/2, plate_width/2, plate_depth])
difference(){
    cylinder(stub_length, stub_diameter_max, stub_diameter_min);
    cylinder(stub_length, stub_diameter_max*0.65, stub_diameter_min*0.65);
}
