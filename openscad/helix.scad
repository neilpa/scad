module helix(dia, height, turns) {
    linear_extrude(height, twist=turns*360) translate([dia, 0, 0])
        circle(dia*0.08);
}

//helix(dia=50, height=200, turns=3);

module dbl_helix(dia, height, turns) {
    helix(dia, height, turns);
    rotate(v=[0,0,1], a=180) helix(dia, height, turns);
}

dbl_helix(dia=20, height=200, turns=4);
