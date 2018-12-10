// Started with `Mini Rounded Box v.1` by Hermes Alvarado <hermesalvarado@gmail.com>
$fn=100;

width = 2 * 25.4;
length = 1 * 25.4;
height = 0.7 * 25.4;
lidheight = 5;

thickness = 1.5;
bottom = 2;

radius = 10;
tolerance = 0.4;

module rounded_box(l,w,h, r) {
    difference() {
        minkowski() {
            cube([l, w, h], center=true);
            cylinder(r=r,h=1, center=true);
        }
    }
}

module open_rounded_box(l,w,h, r, wall,bot) {
    difference() {
        rounded_box(l, w, h, r);
        translate([0,0,bot]) rounded_box(l-wall, w-wall, h, r);
    }
}

module base() {
    open_rounded_box(width, length, height, radius, thickness, bottom);
}

module lid() {
    extra = thickness*2+tolerance*2;
    open_rounded_box(width+extra, length+extra, lidheight, radius, thickness, bottom);
}

module lidded_box() {
    base();
    translate([0, length + radius * 3, 0]) lid();
}

lidded_box();

