echo(version=version());

$fn = 300;

eps = 0.001;
shift = 22.5 / 2;
x = 70; 
y = 83;
r = 136;

color("green")
difference() {
    intersection() {
        translate([0, 0, 11-r]) rotate([90,0,0]) {
            
            // difference() {
            //     cylinder(h=y+eps, r=r, center=true);
            //     cylinder(h=y+2*eps, r=r-4, center=true);
            // }
            cylinder(h=y+eps, r=r, center=true);
            cylinder(h=y-7, r=r+7, center=true);
        }
        union() {
            linear_extrude(height = 20) {
                    difference() {
                        square([x, y], center = true);
                        square([x - 3, y - 10], center = true);
                    }
                    translate([shift + 1.5, 0]) 
                        square([1.5, y], center = true);
                    translate([shift - 1.5, 0]) 
                        square([1.5, y], center = true);
                    translate([shift + 8, 0]) 
                        square([1.5, y], center = true);
                    translate([shift - 8, 0]) 
                        square([1.5, y], center = true);
                    translate([shift, 0]) 
                        square([16, 3], center = true);
                    // translate([shift + 4.75, 0]) 
                    //     square([8, 3], center = true);
                    // translate([shift - 4.75, 0]) 
                    //     square([8, 3], center = true);
                };
            linear_extrude(height = 1.5)
                translate([shift, 0]) 
                    square([1.5 + eps, y], center = true);
            linear_extrude(height = 3) {
                    difference() {
                        square([x - eps, y - eps], center = true);
                        square([x - 6, y - 6], center = true);
                    }
                    translate([-x/4, 0]) 
                        square([3, y - eps], center = true);
                    translate([-x/2,  y/6 - 3]) 
                        square([x/2 + shift - 8, 3]);
                    translate([-x/2, -y/6]) 
                        square([x/2 + shift - 8, 3]);
                    translate([shift + 8,  y/6 - 3]) 
                        square([x/2 - shift - 8, 3]);
                    translate([shift + 8, -y/6]) 
                        square([x/2 - shift - 8, 3]);
                }
        };
    }
    translate([shift, 0, 12]) linear_extrude(10) square([1.5, y], center = true);
}

