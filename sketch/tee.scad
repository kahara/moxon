stub_diameter_max = 16.5;
stub_diameter_min = 15.5;
stub_length = 50.0;

rim_wall_thickness = 4.0;
rim_inner_diameter = stub_diameter_max + 4.0;
rim_outer_diameter = rim_inner_diameter + (rim_wall_thickness * 2);

plate_length = 90;
plate_width = 35.0;
plate_depth = 6.0;

mount_hole_diameter = 4.5;

// plate
difference() {
    cube([plate_length, plate_width, plate_depth]);
    
    translate([15, 7.5, 0])
    cylinder(plate_depth, mount_hole_diameter/2, mount_hole_diameter/2);

    translate([15, 27.5, 0])
    cylinder(plate_depth, mount_hole_diameter/2, mount_hole_diameter/2);

    translate([75, 7.5, 0])
    cylinder(plate_depth, mount_hole_diameter/2, mount_hole_diameter/2);

    translate([75, 27.5, 0])
    cylinder(plate_depth, mount_hole_diameter/2, mount_hole_diameter/2);
}

// stub
translate([plate_length/2, plate_width/2, plate_depth])
difference(){
    cylinder(stub_length, stub_diameter_max/2, stub_diameter_min/2);
    //cylinder(stub_length, (stub_diameter_max*0.1)/2, (stub_diameter_min*0.1)/2);
}

// rim
translate([plate_length/2, plate_width/2, plate_depth])
difference(){
    cylinder(stub_length, rim_outer_diameter/2, rim_outer_diameter/2);
    cylinder(stub_length, rim_inner_diameter/2, rim_inner_diameter/2);
}
