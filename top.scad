include <shell.scad>

difference() {
    shell();
    translate([0, 0, -3.5]) {
        cube([60, 30, 10], center = true);
    }
}

