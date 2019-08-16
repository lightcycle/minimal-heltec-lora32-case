include <device_model.scad>

module puff(p) {
    minkowski() {
        children();
        cube([p, p, p], center=true);
    }
}

module shell() {
    $fn = 20;

    translate([0, 0, 0.6]) {
        minkowski() {
            resize(newsize=[51.2,25.5,7.6]) {
                pcb1(); pcb2(); pcb3();
            }
            sphere(2);
        }
    }    
}

module ports() {
    // Micro-USB cutout
    translate([-28.5, 0, 2.5/2 + pcb_thickness/2]) {
        cube([14,7.5,2.5], center = true);
    }
    
    // Micro-USB plug body cutout
    translate([-25, 0, 2.5/2 + pcb_thickness/2]) {
        hull() {
            translate([0, -3, 0]) {
                rotate([0, 90, 0]) {
                    cylinder(h=6,d=5, center = true, $fn = 100);
                }
            }
            translate([0, 3, 0]) {
                rotate([0, 90, 0]) {
                    cylinder(h=6,d=5, center = true, $fn = 100);
                }
            }
        }
    }

    // OLED cutout (illuminated portion)
    translate([5.6, 1.55+0.6, 5/2 + pcb_thickness/2 + 2]) {
        cube([23,13,10], center = true);
    }
    
    // IPEX Connector (extended for cutout)
    translate([24.2, 0, 1.5/2 + pcb_thickness/2]) {
        cube([5,2.2,1.5], center = true);
        rotate([0, 90, 0]) {
            cylinder(h=10,r=0.75, center = true, $fn = 100);
        }
    }
}

module shell_slide_bottom() {
    $fn = 20;
    difference() {
        shell();
        puff(0.2) {
            device_slidex(100);
        }
        ports();
    }
}

module shell_slide_top() {
    $fn = 20;
    difference() {
        shell();
        puff(0.2) {
            device_slidex(-100);
        }
        ports();
    }
}

module shell_no_slide() {
    $fn = 20;
    difference() {
        shell();
        puff(0.3) {
            device();
        }
        ports();
    }
}