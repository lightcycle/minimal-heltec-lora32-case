include <shell.scad>
include <logo.scad>

difference() {
    shell_slide_top();
    
    translate([7.7-60, 0, 0]) {
        cube([60, 30, 20], center = true);
    }
    
    translate([7.6 - 60/2 + 2.5, 13.3, 4.6]) {
        rotate([0, 90, 0]) {
            cylinder(h=5, r=1, $fn=100, center=true);
        }
    }

    translate([7.6 - 60/2 + 2.5, -13.3, 4.6]) {
        rotate([0, 90, 0]) {
            cylinder(h=5, r=1, $fn=100, center=true);
        }
    }

    translate([7.6 - 60/2 + 2.5, 13.3, -2.7]) {
        rotate([0, 90, 0]) {
            cylinder(h=5, r=1, $fn=100, center=true);
        }
    }

    translate([7.6 - 60/2 + 2.5, -13.3, -2.7]) {
        rotate([0, 90, 0]) {
            cylinder(h=5, r=1, $fn=100, center=true);
        }
    }
    
    translate([-15, 11.5, -5.2]) {
        rotate([0, 0, 270]) {
            linear_extrude(height = 2) {
                rotate([0, 0, 0]) {
                    scale(0.07) {
                        logoPolygon();
                    }
                }
            }
        }
    }
}
