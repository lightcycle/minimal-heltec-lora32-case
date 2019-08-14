include <shell.scad>

difference() {
    shell_slide_top();
    translate([-7.7, 0, 0]) {
        cube([60, 30, 20], center = true);
    }
}

