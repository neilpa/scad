module bolt(radius, length) {
	module head(r, l) {
		cylinder(r=r, h=l);
	}

	module shaft(r, l) {
		cylinder(r=r, h=l);
	}

	head(radius, length * 0.2);
	shaft(radius * 0.65, length * 0.8);
}

bolt(5, 20);
