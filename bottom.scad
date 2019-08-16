include <shell.scad>
include <logo.scad>

scale(0.98) {
    difference() {
        intersection() {
            shell_no_slide();
            translate([0, 0, -7.8]) {
                scale([1, 1, 10]) {
                    translate([0, 0, 0]) {
                        pcb1(); pcb2(); pcb3();
                    }
                }
                translate([27, 0, 4.4]) {
                    cube([5, 1.5, 10], center = true);
                }
            }
        }
        
        translate([-15, 11.5, -5.2]) {
            rotate([0, 0, 270]) {
                linear_extrude(height = 0.7) {
                    rotate([0, 0, 0]) {
                        scale(0.07) {
                            logoPolygon();
                        }
                    }
                }
            }
        }
    }
}
