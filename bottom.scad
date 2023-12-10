echo(version=version());

wall = 2;
$fn = 100;

color("green")
difference() {
    linear_extrude(height = 16)
        union() {
            square([80, 80], center = true);
            translate([40,0,0])
                circle(r = 40);
            translate([-40,0,0])
                circle(r = 40);
        }
    translate([0,0,wall])
        linear_extrude(height = 16)
            union() {
                square([80, 80 - 2 * wall], center = true);
                translate([40,0,0])
                    circle(r = 40 - wall);
                translate([-40,0,0])
                    circle(r = 40 - wall);
            }
}
