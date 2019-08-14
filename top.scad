include <shell.scad>

difference() {
    shell_slide_bottom();
    translate([7.7, 0, 0]) {
        cube([60, 30, 20], center = true);
    }
}

translate([7.3 - 60/2 + 2.5, 13.3, 4.6]) {
    rotate([0, 90, 0]) {
        cylinder(h=5, r=0.9, $fn=100, center=true);
    }
}

translate([7.3 - 60/2 + 2.5, -13.3, 4.6]) {
    rotate([0, 90, 0]) {
        cylinder(h=5, r=0.9, $fn=100, center=true);
    }
}

translate([7.3 - 60/2 + 2.5, 13.3, -2.7]) {
    rotate([0, 90, 0]) {
        cylinder(h=5, r=0.9, $fn=100, center=true);
    }
}

translate([7.3 - 60/2 + 2.5, -13.3, -2.7]) {
    rotate([0, 90, 0]) {
        cylinder(h=5, r=0.9, $fn=100, center=true);
    }
    }