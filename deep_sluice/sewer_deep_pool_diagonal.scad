include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module negative(d=0) {
    translate([7.6-d,-.7,3]) cube([39.3+2*d,.75,5]);
    translate([49.95,3.95-d,3]) cube([.75,39.3+2*d,5]);

    rotate([0,0,-45]) {
        translate([6.1,-1,3]) cube([50,70,10]);
        translate([0,0,7.5]) cube([.1,75,4]);

        translate([0,-1,7.7]) cube([52,75,.75]);

        translate([5.35-d,11,3]) cube([25+2*d,.75,5]);
        translate([5.35-d,19,3]) cube([25+2*d,.75,5]);
        translate([5.35-d,32,3]) cube([25+2*d,.75,5]);
        translate([5.35-d,40,3]) cube([25+2*d,.75,5]);
        translate([5.35-d,49,3]) cube([25+2*d,.75,5]);
        translate([5.35-d,59,3]) cube([25+2*d,.75,5]);

        translate([0,7,8.3]) cube([25,.75,7]);
        translate([0,15,8.3]) cube([25,.75,7]);
        translate([0,26,8.3]) cube([25,.75,7]);
        translate([0,34,8.3]) cube([25,.75,7]);
        translate([0,45,8.3]) cube([25,.75,7]);
        translate([0,54,8.3]) cube([25,.75,7]);
        translate([0,63,8.3]) cube([25,.75,7]);
    }
}

module straight_sewage_way_exterior() {
    difference() {
        union() {
            smooth_tile();
            translate([25,0,0]) smooth_tile();
            translate([0,25,0]) smooth_tile();
            translate([25,25,0]) smooth_tile();
      
            intersection() { 
                rotate([0,0,-45]) translate([0.1,0,5.5]) hull() {
                    cube([6,sqrt(5000),4]);
                    translate([1,0,3]) cube([4,sqrt(5000),4]);
                }
                cube(50);
            }
        }
        negative();
    }

    intersection() { 
        rotate([0,0,-45]) translate([0.85,.75,6.5]) hull() {
            cube([6-1.5,sqrt(4704.5),3]);
            translate([1,0,0]) cube([4-1.5,sqrt(4704.5),6-.75]);
        }
        translate([.75, .75, 0]) cube(48.5);
    }
}

module straight_sewage_way_interior() {
    difference() {
        union() {
            cube([50,50,7.5]);
        }
        rotate([0,0,-45]) translate([5.35,-1,3]) cube([50,70,10]);
    }

    intersection() { 
        rotate([0,0,-45]) translate([0.85,.75,6.5]) hull() {
            cube([6-1.5,sqrt(4704.5),3]);
            translate([1,0,0]) cube([4-1.5,sqrt(4704.5),6-.75]);
        }
        translate([.75, .75, 0]) cube(48.5);
    }
}

module straight_sewage_way_panels() {
    difference() {
        union() {
            translate([.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([25+.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([.325,25+.325,7.5]) cube([24.35,24.35,2]);
            translate([25+.325,25+.325,7.5]) cube([24.35,24.35,2]);
      
            intersection() { 
                rotate([0,0,-45]) translate([0.1,0,8.5]) hull() {
                    cube([6,sqrt(5000),1]);
                    translate([1,0,0]) cube([4,sqrt(5000),4]);
                }
                cube(50);
            }
            intersection() { 
                rotate([0,0,-45]) translate([5.35,0,3]) cube([.75,75,5.5]);
                cube(50);
            }
        }
        negative(d=0.1);
        rotate([0,0,-45]) translate([0,0,5.5]) cube([5.35,75,3]);
        intersection() { 
            rotate([0,0,-45]) translate([0.85,.75,6.5]) hull() {
                cube([6-1.5,sqrt(4704.5),3]);
                translate([1,0,0]) cube([4-1.5,sqrt(4704.5),6-.75]);
            }
            translate([.75, .75, 0]) cube(48.5);
        }
    }
}

straight_sewage_way_panels();

//negative();