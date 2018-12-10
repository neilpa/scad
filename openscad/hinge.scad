use<tube.scad>

$fn=100;

module hinge() {

tolerance=0.3;

module base() {
    cylinder(r=2, h=8);
    cube([3, 20, 8]);
}

module male() {
    translate([0, 10, 0]) {
        base();
        translate([0, 0, -10]) {
            cylinder(d=3.3, h=10);
            translate([0, 3, 0]) cube([3, 17, 10]);
        }
    }
}

module female() {
    rotate(v=[1, 0, 0], a=180) {
        base();
    }
    tube(outer_dia=4, inner_dia=3.5, height=10);
    translate([0, -20, 0]) cube([3, 17, 10]);
}


translate([10, -30, 0]) rotate(a=180, v=[0,1,0]) male();
female();

}

scale([10, 10, 10]) hinge();
