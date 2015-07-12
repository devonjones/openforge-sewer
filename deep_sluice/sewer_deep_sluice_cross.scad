include <../../lib/forge_lib.scad>

module negative(d=0) {
    translate([6,-1,3]) cube([50-12,52,10]);
    difference() {
      translate([0,0,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([0,0,2]) cylinder(12,6,6, $fn=200);
    }
    difference() {
      translate([50,0,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([50,0,2]) cylinder(12,6,6, $fn=200);
    }
    difference() {
      translate([0,50,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([0,50,2]) cylinder(12,6,6, $fn=200);
    }
    difference() {
      translate([50,50,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([50,50,2]) cylinder(12,6,6, $fn=200);
    }

    translate([-1,-1,7.7]) cube([52,52,.75]);

    translate([5.35-d,-.7,3]) cube([39.3+2*d,.75,5]);
    translate([5.35-d,49.95,3]) cube([39.3+2*d,.75,5]);
    translate([49.95,5.35-d,3]) cube([.75,39.3+2*d,5]);
    translate([-.65,5.35-d,3]) cube([.75,39.3+2*d,5]);
}

module sewer_deep_sluice_exterior() {
  difference() {
    union() {
      cube([50,50,8.4]);
  
      #difference() {
        union() {
          translate([0,0,8.5]) cylinder(1,6,6, $fn=200);
          translate([0,0,9.5]) cylinder(3,6,5, $fn=200);
          translate([50,0,8.5]) cylinder(1,6,6, $fn=200);
          translate([50,0,9.5]) cylinder(3,6,5, $fn=200);
          translate([0,50,8.5]) cylinder(1,6,6, $fn=200);
          translate([0,50,9.5]) cylinder(3,6,5, $fn=200);
          translate([50,50,8.5]) cylinder(1,6,6, $fn=200);
          translate([50,50,9.5]) cylinder(3,6,5, $fn=200);
        }
        translate([0,0,9.5]) cylinder(3.01,0,1, $fn=200);
        translate([0,50,9.5]) cylinder(3.01,0,1, $fn=200);
        translate([50,0,9.5]) cylinder(3.01,0,1, $fn=200);
        translate([50,50,9.5]) cylinder(3.01,0,1, $fn=200);
        translate([-1,49.9,0]) cube([100,51,20]);
        translate([49.9,-50,0]) cube([51,100,20]);
        translate([-50,-50.9,0]) cube([100,51,20]);
        translate([-50.1,-0,0]) cube([50,100,20]);
      }
    }
    negative();
  }

  difference() {
    union() {
      translate([0,0,7.5]) cylinder(2,5.25,5.25, $fn=200);
      translate([50,0,7.5]) cylinder(2,5.25,5.25, $fn=200);
      translate([0,50,7.5]) cylinder(2,5.25,5.25, $fn=200);
      translate([50,50,7.5]) cylinder(2,5.25,5.25, $fn=200);
    }
    translate([0,49.15,0]) cube([100,51,20]);
    translate([49.15,-50,0]) cube([51,100,20]);
    translate([-50,-50.15,0]) cube([100,51,20]);
    translate([-50.15,0,0]) cube([51,100,20]);
  }
}

module sewer_deep_sluice_interior() {
  difference() {
    cube([50,50,8.51]);
    difference() {
      translate([0,0,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([0,0,2]) cylinder(12,5.26,5.26, $fn=200);
    }
    difference() {
      translate([50,0,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([50,0,2]) cylinder(12,5.25,5.25, $fn=200);
    }
    difference() {
      translate([0,50,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([0,50,2]) cylinder(12,5.26,5.26, $fn=200);
    }
    difference() {
      translate([50,50,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([50,50,2]) cylinder(12,5.26,5.26, $fn=200);
    }
    frame_square_negative(x, y, l, r, f, b);
    translate([50-.75,-1,7.7]) cube([2,52,1]);
    translate([-1.25,-1,7.7]) cube([2,52,1]);
    translate([-1,-1.25,7.7]) cube([52,2,1]);
    translate([-1,49.25,7.7]) cube([52,2,1]);
  }
}

module sewer_deep_sluice_panels() {
  difference() {
    union() {
      translate([0,0,8.5]) cylinder(1,6,6, $fn=200);
      translate([50,0,8.5]) cylinder(1,6,6, $fn=200);
      translate([0,50,8.5]) cylinder(1,6,6, $fn=200);
      translate([50,50,8.5]) cylinder(1,6,6, $fn=200);
      translate([0,0,9.5]) cylinder(3,6,5, $fn=200);
      translate([50,0,9.5]) cylinder(3,6,5, $fn=200);
      translate([0,50,9.5]) cylinder(3,6,5, $fn=200);
      translate([50,50,9.5]) cylinder(3,6,5, $fn=200);
      difference() {
        translate([0,0,3]) cylinder(4.95,6,6, $fn=200);
        translate([0,0,2]) cylinder(12,5.25,5.25, $fn=200);
      }
      difference() {
        translate([0,50,3]) cylinder(4.95,6,6, $fn=200);
        translate([0,50,2]) cylinder(12,5.25,5.25, $fn=200);
      }
      difference() {
        translate([50,0,3]) cylinder(4.95,6,6, $fn=200);
        translate([50,0,2]) cylinder(12,5.25,5.25, $fn=200);
      }
      difference() {
        translate([50,50,3]) cylinder(4.95,6,6, $fn=200);
        translate([50,50,2]) cylinder(12,5.25,5.25, $fn=200);
      }
    }
    translate([0,0,9.5]) cylinder(3.01,0,1, $fn=200);
    translate([50,0,9.5]) cylinder(3.01,0,1, $fn=200);
    translate([0,50,9.5]) cylinder(3.01,0,1, $fn=200);
    translate([50,50,9.5]) cylinder(3.01,0,1, $fn=200);
    translate([-1,49.9,0]) cube([100,51,20]);
    translate([49.9,-49,0]) cube([51,100,20]);
    translate([-49,-50.9,0]) cube([100,51,20]);
    translate([-49.9,-1,0]) cube([50,100,20]);
  }
}

sewer_deep_sluice_interior();
