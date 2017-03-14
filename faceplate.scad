// https://www.archtoolbox.com/materials-systems/electrical/electricalfaceplates.html
width = 2.75*25.4; //  2-3/4" => mm
height = 4.5*25.4; // 4-1/2" => mm
thickness = 5;
_depth = thickness + 1;

electrical_opening_w = (1+11/32)*25.4; // 1-11/32" => mm
electrical_opening_h = 1.125*25.4; // 1-1/4" => mm
electrical_opening_diff = electrical_opening_w - electrical_opening_h;

module electrical_opening() {
    rotate(a=90, v=[1, 0, 0]) {
        hull() {
            translate([-electrical_opening_diff / 2, 0, 0])
              cylinder(d=electrical_opening_h, h=_depth, center=true);
            translate([ electrical_opening_diff / 2, 0, 0])
              cylinder(d=electrical_opening_h, h=_depth, center=true);
        }
    }
}

screw_opening_d = 4;

module screw_opening() {
    rotate(a=90, v=[1, 0, 0])
      cylinder(d=screw_opening_d, h=_depth, center=true);
}

difference() {
    cube([width, thickness, height], center = true);
    screw_opening();
    translate([0, 0,  width/3.2]) electrical_opening();
    translate([0, 0, -width/3.2]) electrical_opening();
}
