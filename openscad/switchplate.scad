// https://www.archtoolbox.com/materials-systems/electrical/electricalfaceplates.html
width = 2.75*25.4; //  2-3/4" => mm
height = 4.5*25.4; // 4-1/2" => mm
thickness = 5;
_depth = thickness + 1;

switch_opening_w = (13/32)*25.4; // 13/32" => mm
switch_opening_h = (15/16)*25.4; // 15/16" => mm
module switch_opening() {
    cube([switch_opening_w, _depth, switch_opening_h], center=true);
}

screw_opening_d = 4;
module screw_opening() {
    rotate(a=90, v=[1, 0, 0])
      cylinder(d=screw_opening_d, h=_depth, center=true);
}

difference() {
    cube([width, thickness, height], center = true);
    switch_opening();
    translate([0, 0,  width/2.5]) screw_opening();
    translate([0, 0, -width/2.5]) screw_opening();
;
}
