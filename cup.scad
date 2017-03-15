use<donut.scad>

radius = 0.5;

module unk(base_dia, top_dia, height) {
    hull() {
        translate([0, 0, radius]) donut(base_dia/2, radius);
        translate([0, 0, radius + height]) donut(top_dia/2, radius);
    }
}

module cup(base_dia, top_dia, height) {
    difference() {
        unk(base_dia, top_dia, height);
        translate([0, 0, radius])
          unk(base_dia-radius, top_dia-radius, height*2);
    }
}

cup(4, 5, 10);