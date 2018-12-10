module gear(radius, thickness, teeth) {
    teeth_thickness = thickness * 0.8;
	cylinder(r=radius, h=thickness, center=true);
    for (t=[0:teeth]) {
        rotate([0, 0, t*360/teeth])
          translate([radius, 0, 0])
          cube([teeth_thickness*2, teeth_thickness, teeth_thickness], center=true);
    }
}

gear(20, 4, 18);
translate([0, 0, 10]) gear(12, 2, 24);