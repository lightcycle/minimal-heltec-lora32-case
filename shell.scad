include <device_model.scad>

module puff(p) {
    minkowski() {
        children();
        cube([p, p, p], center=true);
    }
}

module shell() {
    $fn = 20;

    translate([-25.1, -12.75, 1.05]) {
        minkowski() {
            resize(newsize=[50.2,25.5,7]) {
                linear_extrude(height = 1, center = true, convexity = 10) {
                    polygon(points=[[0,2.5],[1.5,0],[47.2,0],[47.2,4.5],[50.2,7.5],[50.2,18],[47.2,21],[47.2,25.5],[1.5,25.5],[0,23],[0,18],[2,16],[2,9.5],[0,7.5]]);
                }
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
    translate([-28.3, 0, 2.5/2 + pcb_thickness/2]) {
        cube([6,10.5,4.5], center = true);
    }

    // OLED cutout (illuminated portion)
    translate([5.6, 1.55+0.6, 5/2 + pcb_thickness/2 + 2]) {
        cube([23,13,10], center = true);
    }
    
    // IPEX Connector (extended for cutout)
    translate([25, 0, 1.5/2 + pcb_thickness/2]) {
        cube([5,2.2,1.5], center = true);
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
