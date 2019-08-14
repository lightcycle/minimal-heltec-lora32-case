pcb_thickness = 1.6;
    
module device() {
    $fn = 20;

    pcb1();
    pcb2();
    pcb3();
    pcb4();
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
        pcb4();
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
            polygon(points=[[2,0],[47.2,0],[47.2,25.5],[2,25.5]]);
        }
    }
}

module pcb2() {
    translate([-25.1, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[0,2.5],[1.5,0],[2,0],[2,9.5],[0,7.5]]);
        }
    }
}

module pcb3() {    
    translate([-25.1, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[2,25.5],[1.5,25.5],[0,23],[0,18],[2,16]]);
        }
    }    
}

module pcb4() {
    translate([-25.1, -12.75, 0]) {
        linear_extrude(height = pcb_thickness, center = true, convexity = 10) {
            polygon(points=[[47.2,4.5],[50.2,7.5],[50.2,18],[47.2,21]]);
        }
    }
}

module microusb() {
    translate([-20.5, 0, 2.5/2 + pcb_thickness/2]) {
        cube([6,7.5,2.5], center = true);
    }
}

module reset_button() {
    translate([-20.5, 8, 2.5/2 + pcb_thickness/2]) {
        cube([4,3,2], center = true);
    }
}

module program_button() {
        translate([-20.5, -8, 2.5/2 + pcb_thickness/2]) {
        cube([4,3,2], center = true);
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
    translate([-13.9, 7.4, 4.9/2 + pcb_thickness/2]) {
        cylinder(h=4.9, r=2.5, center = true);
    }
}

module ipex_connector() {
    translate([23.8, 0, 1.5/2 + pcb_thickness/2]) {
        cube([2.2,2.2,1.5], center = true);
    }
}

module battery_jack() {
    jack_thickness = 9.74 - 5 - pcb_thickness;
    translate([-20.8, 0, -jack_thickness/2 - pcb_thickness/2]) {
        cube([4,5,jack_thickness], center = true);
    }
}

module misc() {
    cube([42, 20, pcb_thickness + 2], center=true);
}