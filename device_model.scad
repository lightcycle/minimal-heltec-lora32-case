module device() {
    $fn = 20;

    pcb_thickness = 1.6;

    // PCB
    translate([-25.1, -12.75, -0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[0,2.5],[1.5,0],[47.2,0],[47.2,4.5],[50.2,7.5],[50.2,18],[47.2,21],[47.2,25.5],[1.5,25.5],[0,23],[0,18],[2,16],[2,9.5],[0,7.5]]);
        }
    }

    // Micro-USB
    translate([-20.5, 0, 2.5/2 + pcb_thickness/2]) {
        cube([6,7.5,2.5], center = true);
    }

    // Micro-USB (extended for cutout)
    translate([-28.5, 0, 2.5/2 + pcb_thickness/2]) {
        cube([14,7.5,2.5], center = true);
    }

    // Reset Button
    translate([-20.5, 8, 2.5/2 + pcb_thickness/2]) {
        cube([4,3,2], center = true);
    }

    // Program Button
    translate([-20.5, -8, 2.5/2 + pcb_thickness/2]) {
        cube([4,3,2], center = true);
    }

    // OLED
    translate([5.6, 0.6, 5/2 + pcb_thickness/2]) {
        cube([33.28,18.56,5], center = true);
    }

    // OLED (extended for cutout)
    translate([5.6, 0.6, 5/2 + pcb_thickness/2 + 2]) {
        cube([33.28,18.56,9], center = true);
    }
    
    // OLED Ribbon Cable
    translate([5.6, -10.4, 4.8/2 + pcb_thickness/2]) {
        cube([15,3.5,4.8], center = true);
    }

    // WiFi Pigtail
    translate([-13.9, 7.4, 4.9/2 + pcb_thickness/2]) {
        cylinder(h=4.9, r=2.5, center = true);
    }

    // IPEX Connector
    translate([23.8, 0, 1.5/2 + pcb_thickness/2]) {
        cube([2.2,2.2,1.5], center = true);
    }
	
    // IPEX Connector (extended for cutout)
    translate([23.8+1.1, 0, 1.5/2 + pcb_thickness/2]) {
        cube([1,2.2,1.5], center = true);
    }

    // Battery Jack
    jack_thickness = 9.74 - 5 - pcb_thickness;
    translate([-20.8, 0, -jack_thickness/2 - pcb_thickness/2]) {
        cube([4,5,jack_thickness], center = true);
    }

    // Misc electronics space
    cube([42, 20, pcb_thickness + 2], center=true);
}
