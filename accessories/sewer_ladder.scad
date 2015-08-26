include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module negative() {
    translate([-1,-1,13.2]) cube([25*x+2,27,.75]);
    translate([-1,-1,21.9]) cube([25*x+2,27,.75]);
    translate([-1,-1,28.9]) cube([25*x+2,27,.75]);
    translate([-1,-1,36.8]) cube([25*x+2,27,.75]);
    translate([-1,-1,41.3]) cube([25*x+2,27,.75]);
    
    translate([-.1,17.9,-.1]) cube([25.2,.1,7.5+2.2]);

    translate([9.5,17.9,-1]) cube([.75,27,14.3]);
    translate([19.5,17.9,-1]) cube([.75,27,14.3]);

    translate([-1,22,13.5]) cube([25*x+2,.75,9]);
    translate([3.5,-1,13.9]) cube([1,27,8.5]);
    translate([13.5,-1,13.9]) cube([1,27,8.5]);

    translate([10.5,-1,22]) cube([.75,27,7]);
    translate([19.5,-1,22]) cube([.75,27,7]);

    translate([-1,20,29]) cube([25*x+2,.75,8.5]);
    translate([4.5,-1,29]) cube([.75,27,8]);
    translate([15.5,-1,29]) cube([.75,27,8]);

    translate([8.5,-1,37]) cube([.75,27,4.5]);
    translate([17.5,-1,37]) cube([.75,27,4.5]);

    translate([-1,21,41.3]) cube([25*x+2,.75,9]);
    translate([9.5,-1,41.5]) cube([.75,27,9]);
    translate([20.5,-1,41.5]) cube([.75,27,9]);
}

module step() {
    translate([-5,-2,0]) hull() {
        cube([10,4,1]);
        translate([2,2,-2]) cube([6,2,2]);
    }
}
module ladder() {
    translate([12.5,18,16]) step();
    translate([12.5,18,16+8]) step();
    translate([12.5,18,16+16]) step();
    translate([12.5,18,16+24]) step();
    translate([12.5,18,16+32]) step();
}

module sewer_ladder_exterior() {
    union() {
        difference() {
            union() {
                translate([0,18,0]) cube([25,7,50]);
                smooth_tile();
            }
            negative();
        }
        translate([.85,18+.85,0]) cube([25-1.7, 7-1.7,50-.85]);
        translate([.85,.85,0]) cube([25-1.7, 25-1.7,7.5]);
        ladder();
    }
}

module sewer_ladder_interior() {
    translate([.75,18+.75,0]) cube([25-1.5, 7-1.5,50-.75]);
    cube([25,17.9,7.6]);
    translate([.75,17.9,0]) cube([25-1.5,7-.65,7.6]);
}

module sewer_ladder_panels() {
    difference() {
        union() {
            difference() {
                union() {
                    translate([0,18,0]) cube([25,7,50]);
                    translate([.325,.325,7.5]) cube([24.35,24.35,2]);
                }
                negative();
            }
            ladder();
        }
        translate([.85,18+.85,-.1]) cube([25-1.7, 7-1.7,50-.85+.1]);
    }
}

render_exterior=false;
render_interior=false;
render_panels=false;

if (render_exterior) {
  sewer_ladder_exterior();
} else if (render_interior) {
  sewer_ladder_interior();
} else if (render_panels) {
  sewer_ladder_panels();
}

