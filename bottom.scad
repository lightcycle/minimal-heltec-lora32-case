include <shell.scad>

difference() {
    shell();
    translate([0, 0, 6.5]) {
        cube([60, 30, 10], center = true);
    }
}

