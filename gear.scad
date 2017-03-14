gear_radius = 20;
gear_thickness = 4;

teeth = 18;
teeth_thickness = gear_thickness * 0.8;
teeth_length = teeth_thickness;

module gear() {
	cylinder(r=gear_radius, h=gear_thickness, center=true);
    for (r=[0:teeth]) {
        rotate([0, 0, r*360/teeth])
          translate([gear_radius, 0, 0])
          cube([teeth_length*2, teeth_thickness, teeth_thickness], center=true);
    }
}

gear();
