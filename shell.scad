include <device_model.scad>

module shell() {
    $fn = 20;

    difference() {
        translate([-25.1, -12.75, 0.85]) {
            minkowski() {
                resize(newsize=[50.2,25.5,6.6]) {
                    linear_extrude(height = 1, center = true, convexity = 10) {
                        polygon(points=[[0,2.5],[1.5,0],[47.2,0],[47.2,4.5],[50.2,7.5],[50.2,18],[47.2,21],[47.2,25.5],[1.5,25.5],[0,23],[0,18],[2,16],[2,9.5],[0,7.5]]);
                    }
                }
                sphere(2);
            }
        }
        minkowski() {
            device();
            sphere(0.1);
        }
        translate([-30.5, 0, 2.5/2 + 1.6/2]) {
            cube([12,7.5,2.5], center = true);
        }
        translate([26, 0, 1.5/2 + 1.6/2]) {
            rotate([0, 90, 0]) {
                cylinder(h=10,r=0.5, center = true);
            }
        }
    }
}