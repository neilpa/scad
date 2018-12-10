module tube(outer_dia, inner_dia, height) {
    difference() {
        cylinder(d=outer_dia, h=height);
        cylinder(d=inner_dia, h=height);
    }
}

tube(20, 17, 50);
