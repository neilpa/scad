module donut(radius, thick) {
    rotate_extrude()
        translate([radius,0,0])
        circle(thick);
}

translate([0, 0, -200]) donut(100, 100);
donut(80, 50);
translate([0, 0, 120]) donut(50, 10);
