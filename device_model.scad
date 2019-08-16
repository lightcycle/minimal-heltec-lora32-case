pcb_thickness = 1.6;

module device() {
    $fn = 20;

    pcb1();
    pcb2();
    pcb3();
    microusb();
    reset_button();
    program_button();
    oled();
    oled_ribbon();
    wifi_pigtail();
    ipex_connector();
    battery_jack();
    misc();
}

module pcb1() {
    translate([-26, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[2,0],[48,0],[48,25.5],[2,25.5]]);
        }
    }
}

module pcb2() {
    translate([-26, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[0,1.5],[2,0],[2,25.5],[0,23.5]]);
        }
    }
}

module pcb3() {
    translate([-26, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[48,3.7],[52,7.7],[52,17.8],[48,21.8]]);
        }
    }
}

module microusb() {
    translate([-52/2 + 5.5/2 + .5, 0, 3/2 + pcb_thickness/2]) {
        cube([5.5,7.5,3], center = true);
    }
}

module reset_button() {
    translate([-52/2 + 4/2 + 1.75, -25.5/2 + 3.2/2 + 3, 2/2 + pcb_thickness/2]) {
        cube([4,3.2,2], center = true);
    }
}

module program_button() {
    translate([-52/2 + 4/2 + 1.75, 25.5/2 - 3.2/2 - 3, 2/2 + pcb_thickness/2]) {
        cube([4,3.2,2], center = true);
    }
}

module oled() {
    translate([5.4, 0.2, 5.2/2 + pcb_thickness/2]) {
        cube([33.28,18.56,5.2], center = true);
    }
}

module oled_ribbon() {
    translate([5.6, -10.4, 4.8/2 + pcb_thickness/2]) {
        cube([15,3.5,4.8], center = true);
    }
}

module wifi_pigtail() {
    translate([-52/2 + 5/2 + 9, 25.5/2 - 5/2 - 4.4, 5/2 + pcb_thickness/2]) {
        cylinder(h=5, r=2.5, center = true);
    }
}

module ipex_connector() {
    translate([23.8, 0, 1.5/2 + pcb_thickness/2]) {
        cube([2.2,2.2,1.5], center = true);
    }
}

module battery_jack() {
    translate([-52/2 + 5.25/2 + 2.9, 0, -3.9/2 - pcb_thickness/2]) {
        cube([5.25,7.5,3.9], center = true);
    }
}

module misc() {
    cube([42, 20, pcb_thickness + 3.5], center=true);
}