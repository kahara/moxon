mast_diameter = 21;
hole_diameter = 30;
plate_height = 6;
plate_diameter = 60;
adapter_height = 60;
screw_center = 22.5;
screw_hole = 4;

difference() {
    cylinder(plate_height, plate_diameter/2, plate_diameter/2, true);
    cylinder(plate_height+2, (hole_diameter/2)-2, (hole_diameter/2)-2, true);
    
//    translate([0, screw_center, 0])
//    cylinder(plate_height+2, screw_hole/2, screw_hole/2, true);
//    translate([screw_center, 0, 0])
//    cylinder(plate_height+2, screw_hole/2, screw_hole/2, true);
//    translate([0, -screw_center, 0])
//    cylinder(plate_height+2, screw_hole/2, screw_hole/2, true);
//    translate([-screw_center, 0, 0])
//    cylinder(plate_height+2, screw_hole/2, screw_hole/2, true);

    for(sextant=[1:6]) {
        a = 60 * sextant;
        
        x = screw_center * sin(a);
        y = screw_center * cos(a);

        translate([x, y, 0])
            cylinder(plate_height+2, screw_hole/2, screw_hole/2, true);
    }
}

translate([0, 0, (adapter_height/2) - (plate_height/2)])
difference() {
    cylinder(adapter_height, hole_diameter/2, hole_diameter/2, true);
    cylinder(adapter_height+2, mast_diameter/2, mast_diameter/2, true);
}

translate([0, 0, adapter_height*1.1])
difference() {
    cylinder(20, hole_diameter/2, mast_diameter/2, true);
    cylinder(22, mast_diameter/2, mast_diameter*0.35, true);
}
