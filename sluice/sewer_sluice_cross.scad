include <../../lib/forge_lib.scad>

module smooth_tile() {
    cube([25,25,7.5]);
    translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module sewer_sluice_curved_exterior() {
    difference() {
        union() {
            cube([50,50,9.7]);
            translate([.325,.325,7.5]) cube([50-.325*2,50-.325*2,2]);
        }
        translate([0,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([0,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
    }
}

sewer_sluice_curved_exterior();

//negative();

