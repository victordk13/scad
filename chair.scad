echo(version=version());

color("green")
    difference() {
        linear_extrude(height = 30, scale = 0.8)
            square([80, 90], center = true);
        translate([0,0,-1])
            linear_extrude(height = 20, scale = 0.83)
                square([100, 70], center = true);
        translate([0,0,-1])
            linear_extrude(height = 20, scale = 0.8)
                square([60, 100], center = true);
    }
color("cyan")
    difference() {
        translate([0, 40, 29])
            linear_extrude(height = 30, scale = [0.72, 0.3] )
                square([64, 30], center = true);
        translate([0, 50, 28])
            linear_extrude(height = 35, scale = [0.72, 0.3])
                square([66, 30], center = true);
        translate([0, 35, 28])
            linear_extrude(height = 21, scale = 0.75)
                square([45, 50], center = true);
    }
