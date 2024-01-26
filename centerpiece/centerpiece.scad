spreader_diameter = 8.5;
spreader_angle = 40.24;

for(m=[0:1])
    mirror([0, m, 0])
    for(n=[0:1])
        mirror([n, 0, 0])
        rotate([0, 0, spreader_angle / 2])
    
        difference() {
            cube([spreader_diameter * 12,
                spreader_diameter * 4,
                spreader_diameter * 4]);
            
            rotate([90, 0, 90])
            translate([spreader_diameter * 2,
                spreader_diameter * 2,
                35])
            cylinder(spreader_diameter * 8,
                spreader_diameter,
                spreader_diameter);
        }

cylinder(spreader_diameter * 0.65, 70, 70);


difference() {
    translate([0, 0, 0])
        cylinder(100, 30, 30);
    translate([0, 0, spreader_diameter * 4])
        cylinder(100, 21, 21);
}
