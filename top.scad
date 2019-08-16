include <shell.scad>

difference() {
    shell();
    translate([-38, 0, 0]) {
        cube([50, 50, 50], center = true);
    }
    difference() {
        scale(.91, center = true) {
            shell();
        }
        translate([17, 0, 0]) {
            cube([50, 50, 50], center = true);
        }
    }
}