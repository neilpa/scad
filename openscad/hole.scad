use<tube.scad>

module hole(radius, length) { // end_cap?
	module base(r, l) {
        cylinder(r=r, h=l);
	}

	module shaft(r, l) {
        tube(outer_dia=r*2, inner_dia=r*1.8, height=l);
	}

	base(radius, length * 0.2);
	shaft(radius, length);
}

hole(5, 20);
