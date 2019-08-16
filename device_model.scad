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

module device_slidex(x) {
    $fn = 20;

    slidex(x) {
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
}

module slidex(x) {
    for (i = [0:1:$children-1]) {
        hull() {
            children(i);
            translate([x,0,0]) {
                children(i);
            }
        }
    }
}

module pcb1() {
    translate([-25.1, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[1.5,0],[47.2,0],[47.2,25.5],[1.5,25.5]]);
        }
    }
}

module pcb2() {
    translate([-25.1, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[-0.5,1.5],[1.5,0],[1.5,25.5],[-0.5,23.5]]);
        }
    }
}

module pcb3() {
    translate([-25.1, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[47.2,3.7],[51.2,7.7],[51.2,17.8],[47.2,21.8]]);
        }
    }
}

module microusb() {
    translate([-20.5, 0, 2.5/2 + pcb_thickness/2]) {
        cube([5.9,7.5,2.5], center = true);
    }
}

module reset_button() {
    translate([-20.5, 8, 2.5/2 + pcb_thickness/2]) {
        cube([4,3.2,2], center = true);
    }
}

module program_button() {
        translate([-20.5, -8, 2.5/2 + pcb_thickness/2]) {
        cube([4,3.2,2], center = true);
    }
}

module oled() {
    translate([5.6, 0.6, 5/2 + pcb_thickness/2]) {
        cube([33.28,18.56,5], center = true);
    }
}

module oled_ribbon() {
    translate([5.6, -10.4, 4.8/2 + pcb_thickness/2]) {
        cube([15,3.5,4.8], center = true);
    }
}

module wifi_pigtail() {
    translate([-13.9, 7.4, 5/2 + pcb_thickness/2]) {
        cylinder(h=5, r=2.5, center = true);
    }
}

module ipex_connector() {
    translate([23.8, 0, 1.5/2 + pcb_thickness/2]) {
        cube([2.2,2.2,1.5], center = true);
    }
}

module battery_jack() {
    translate([-20.8, 0, -3.9/2 - pcb_thickness/2]) {
        cube([5.25,7.5,3.9], center = true);
    }
}

module misc() {
    cube([42, 20, pcb_thickness + 3.5], center=true);
}