module helix(dia, height, turns) {
    linear_extrude(height, twist=turns*360) translate([dia, 0, 0])
        circle(dia*0.08);
}

helix(dia=50, height=200, turns=3);
