// TODO Explore other ways to define this
//  Can use a polygon triangle with rotational extrude 360deg
module cone(radius, height) {
	hull() {
		epsilon=0.000001;
		translate([0, 0, height]) sphere(r=epsilon);
		cylinder(h=epsilon, r=radius);
	}
}

cone(10, 20);
