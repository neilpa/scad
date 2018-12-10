use<donut.scad>
radius=0.5;

$fn=40;
module unk(base_dia, top_dia, height) {
    cylinder(d1=base_dia + radius*2, d2=top_dia + radius*2, h=height);
}

module cup(base_dia, top_dia, height) {
    difference() {
        unk(base_dia, top_dia, height);
        translate([0, 0, radius])
          unk(base_dia-radius, top_dia-radius, height*2);
    }
}

cup(12, 17, 30);
