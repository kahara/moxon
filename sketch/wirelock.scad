el_l = 40;
el_w = 10;
el_h = 4;
wire = 1.7;
gr_w = wire*2;
gr_h = wire;
padding = 5;

for(row = [0 : 5]) {
    for(col = [0 : 3]) {
        translate([col*(el_l+padding), row*(el_w+padding), 0])
            difference() {
                cube([el_l, el_w, el_h], true);
                translate([0, 0, (el_h/2)])
                    cube([el_l, gr_w, gr_h], true);
        }
    }
}
