width = 120;
length = 250;
height = 6;
hole = 30;

difference() {
    cube([length, width, height], true);
    cylinder(height*2, hole/2, hole/2, true);
}
