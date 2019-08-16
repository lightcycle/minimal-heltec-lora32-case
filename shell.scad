include <device_model.scad>

module shell() {
    $fn = 10;
	difference() {
		minkowski() {
			mirrored_hull();
			cube(1.4, center = true);
		}
        minkowski() {
            union() {
                mirrored_hull();
                ports();
            }
            cube(0.4, center = true);
        }
	}
}

module cutout() {

}

module mirrored_hull() {
    hull() {
        device();
        scale([1,-1,1]) {
            device();
        }
        scale([-1,-1,1]) {
            device();
        }
        scale([-1,1,1]) {
            device();
        }
    }
}

module ports() {
    // Micro-USB plug
    translate([-26 - 20/2 + 10, 0, 2.5/2 + pcb_thickness/2]) {
        cube([20, 7.6, 2.5], center = true);
    }
    
    // Micro-USB plug body cutout
    translate([-26 - 20/2 - 0.9, 0, 2.5/2 + pcb_thickness/2]) {
        cube([20, 11.4, 7.6], center = true);
    }

    // OLED cutout (illuminated portion)
    translate([5.6, 1.55+0.6, 5/2 + pcb_thickness/2 + 2]) {
        cube([23,13,10], center = true);
    }
    
    // IPEX Connector (extended for cutout)
    translate([24.2, 0, 1.5/2 + pcb_thickness/2]) {
        cube([20,3.2,2.5], center = true);
    }
}