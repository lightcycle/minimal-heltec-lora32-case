include <shell.scad>

difference() {
    shell_no_slide();
    translate([0, 0, -7.8]) {
        scale([1, 1, 10]) {
            translate([0, 0, 0]) {
                pcb1(); pcb2(); pcb3();
            }
        }
        translate([27, 0, 4.4]) {
            cube([5, 1.5, 10], center = true);
        }
    }
}
