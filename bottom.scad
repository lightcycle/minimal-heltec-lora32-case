include <shell.scad>

intersection() {
    shell();
    translate([-38, 0, 0]) {
        cube([50, 50, 50], center = true);
    }
}

intersection() {
    shell();
    difference() {
        scale(.90, center = true) {
            shell();
        }
        translate([17, 0, 0]) {
            cube([50, 50, 50], center = true);
        }
        translate([-38, 0, 0]) {
            cube([50, 50, 50], center = true);
        }
    }
}