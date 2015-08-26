include <../../lib/forge_lib.scad>

module smooth_tile() {
   cube([25,25,7.5]);
   translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module negative(d=0) {
    translate([6,-0.1,7.5]) cube([.1,50.2,2.1]);

    translate([-0.1,-0.1,7.7]) cube([6.2,50.2,.75]);
    translate([-0.1,-0.1,2.5]) cube([6.2-.75,50.2,.75]);

    translate([-4,11,3]) cube([5,.75,5]);
    translate([-4,19,3]) cube([5,.75,5]);
    translate([-4,32,3]) cube([5,.75,5]);
    translate([-4,40,3]) cube([5,.75,5]);

    translate([-4,5,-0.1]) cube([5,.75,3]);
    translate([-4,15,-0.1]) cube([5,.75,3]);
    translate([-4,25,-0.1]) cube([5,.75,3]);
    translate([-4,35,-0.1]) cube([5,.75,3]);
    translate([-4,45,-0.1]) cube([5,.75,3]);

    translate([-0.01,7,8.3]) cube([6.1,.75,7]);
    translate([-0.01,15,8.3]) cube([6.1,.75,7]);
    translate([-0.01,26,8.3]) cube([6.1,.75,7]);
    translate([-0.01,34,8.3]) cube([6.1,.75,7]);
    translate([-0.01,45,8.3]) cube([6.1,.75,7]);
    
    translate([5.35,-0.1,0]) cube([.75,.95-d,7.8]);
    translate([5.35,50-.85+d,0]) cube([.75,.95,7.8]);
}

module sewer_border_exterior() {
    difference() {
        union() {
            smooth_tile();
            translate([25,0,0]) smooth_tile();
            translate([0,25,0]) smooth_tile();
            translate([25,25,0]) smooth_tile();
            translate([0,0,5.5]) hull() {
                cube([6,50,4]);
                translate([1,0,3]) cube([4,50,4]);
            }
        }
        negative();
    }
    translate([0.85,.85,0]) hull() {
        cube([6-1.5,50-2*.85,3+6.5]);
        translate([1,0,0]) cube([4-1.5,50-2*.85,6-.75+6.5]);
    }
}

module sewer_border_interior() {
    translate([6.1,0,0]) cube([43.9,50,7.6]);
    translate([.75,.75,0]) cube([10,50-1.5,7.7]);
    translate([0.75,.75,0]) hull() {
        cube([6-1.3,48.52,9.5]);
        translate([1,0,0]) cube([4-1.3,48.5,6-.65+6.5]);
    }
}

module sewer_border_panels() {
    difference() {
        union() {
            translate([.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([25,0,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([0,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([25,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([0,0,0]) hull() {
                cube([6,50,4+5.5]);
                translate([1,0,3]) cube([4,50,4+5.5]);
            }
        }
        negative();
        translate([5.34,-0.1,-0.1]) cube([.75,50,7.9]);
        translate([0.85,.85,-0.1]) hull() {
            cube([6-1.5,50-2*.85,3+6.6]);
            translate([1,0,0]) cube([4-1.5,50-2*.85,6-.75+6.6]);
        }
    }
}

sewer_border_panels();

//negative();