include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module negative(d=0) {
  difference() {
    translate([50,0,3]) cylinder(10,100,100, $fn=200);
    translate([50,0,-1]) cylinder(20,49.9,49.9, $fn=200);
  }

  difference() {
    translate([50,0,7.5]) cylinder(2.1,43.9,43.9, $fn=200);
    translate([50,0,7]) cylinder(3,43.8,43.8, $fn=200);
  }

  difference() {
    translate([50,0,7.7]) cylinder(.75,100,100, $fn=200);
    translate([50,0,7]) cylinder(2,43.9,43.9, $fn=200);
  }

  translate([-38.65+d,-.5,3]) cube([39.5+2*d,.75,5]);
  translate([49.75,49.15-d,3]) cube([.75,39.5+2*d,5]);

  translate([50,0,3]) rotate([0,0,90+84]) translate([49.05,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+74]) translate([49.05,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+66]) translate([49.05,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+57]) translate([49.05,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+44]) translate([49.05,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+36]) translate([49.05,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+25]) translate([49.05,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+14]) translate([49.05,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+6]) translate([49.05,0,0]) cube([25,.75,5]);

  translate([50,0,8.3]) rotate([0,0,90+82]) translate([43.85,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+71]) translate([43.85,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+61]) translate([43.85,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+49]) translate([43.85,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+39]) translate([43.85,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+31]) translate([43.85,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+22]) translate([43.85,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+12]) translate([43.85,0,0]) cube([25,.75,7]);
}

module sewer_deep_pool_curved_convex_exterior() {
  difference() {
    union() {
      smooth_tile();
      translate([25,0,0]) smooth_tile();
      translate([0,25,0]) smooth_tile();
      translate([25,25,0]) smooth_tile();
      #difference() {
        translate([50,0,0]) cylinder(9.5,60,60, $fn=200);
        translate([50,0,-1]) cylinder(12,43.9,43.9, $fn=200);
      }
    
      difference() {
        union() {
          translate([50,0,8.5]) cylinder(1,49.9,49.9, $fn=200);
          translate([50,0,9.5]) cylinder(3,49.9,48.9, $fn=200);
        }
        translate([50,0,8]) cylinder(7,43.9,43.9, $fn=200);
        translate([50,0,9.5]) cylinder(3.01,43.9,44.9, $fn=200);
      }
    }
    translate([-20,-100,-1]) cube([150,100,20]);
    translate([-20,50,-1]) cube([150,100,20]);
    translate([49.9,-10,-1]) cube([71,70,20]);
    translate([-70,-10,-1]) cube([70,70,20]);
    negative();
  }
  difference() {
    union() {
      translate([50,0,7.5]) cylinder(2,49.15,49.15, $fn=200);
      translate([50,0,9.5]) cylinder(2.25,49.15,48.15, $fn=200);
    }
    translate([50,0,7]) cylinder(7,44.65,44.65, $fn=200);
    translate([50,0,9.5]) cylinder(2.26,44.65,45.65, $fn=200);
    translate([0,-50.25,0]) cube([100,51,20]);
    translate([49.25,0,0]) cube([51,50,20]);
  }
}

module sewer_deep_pool_curved_convex_interior() {
  difference() {
    union() {
      cube([50,50,7.5]);
      difference() {
        union() {
          translate([50,0,7.5]) cylinder(2,49.15,49.15, $fn=200);
          translate([50,0,9.5]) cylinder(2.25,49.15,48.15, $fn=200);
        }
        translate([50,0,7]) cylinder(7,44.65,44.65, $fn=200);
        translate([50,0,9.5]) cylinder(2.26,44.65,45.65, $fn=200);
        translate([0,-50.25,0]) cube([100,51,20]);
        translate([49.25,0,0]) cube([51,50,20]);
      }
    }
    translate([0,-50.9,-1]) cube([100,51,20]);
    translate([49.9,0,-1]) cube([51,50,20]);
    difference() {
      translate([50,0,3]) cylinder(10,100,100, $fn=200);
      translate([50,0,3]) cylinder(10,49.15,49.15, $fn=200);
    }
  }
}

module sewer_deep_pool_curved_convex_panels() {
  difference() {
    union() {
      difference() {
        union() {
          translate([.325,.325,7.5]) cube([24.35,24.35,2]);
          translate([25,0,0])  translate([.325,.325,7.5]) cube([24.35,24.35,2]);
          translate([0,25,0])  translate([.325,.325,7.5]) cube([24.35,24.35,2]);
          translate([25,25,0])  translate([.325,.325,7.5]) cube([24.35,24.35,2]);
        }
        difference() {
          translate([50,0,7.4]) cylinder(2.2,100,100, $fn=200);
          translate([50,0,7.3]) cylinder(3.1,43.9,43.9, $fn=200);
        }
      }
      difference() {
        translate([50,0,3]) cylinder(6.5,100,100, $fn=200);
        translate([50,0,2]) cylinder(12,49.9-.75,49.9-.75, $fn=200);
      }

      difference() {
        union() {
          translate([50,0,8.5]) cylinder(1,49.9,49.9, $fn=200);
          translate([50,0,9.5]) cylinder(3,49.9,48.9, $fn=200);
        }
        translate([50,0,8]) cylinder(7,43.9,43.9, $fn=200);
        translate([50,0,9.5]) cylinder(3.01,43.9,44.9, $fn=200);
      }
    }

    translate([-50,-100.9,-1]) cube([200,101,20]);
    translate([49.9,0,-1]) cube([101,100,20]);
    translate([-50,50,-1]) cube([101,100,20]);
    translate([-100,0,-1]) cube([100,100,20]);
    negative(d=0.1);
    difference() {
      union() {
        translate([50,0,8]) cylinder(1.5,49.15,49.15, $fn=200);
        translate([50,0,9.49]) cylinder(2.26,49.15,48.15, $fn=200);
      }
      translate([50,0,7]) cylinder(7,44.65,44.65, $fn=200);
      translate([50,0,9.5]) cylinder(2.26,44.65,45.65, $fn=200);
      translate([0,-50.25,0]) cube([100,51,20]);
      translate([49.25,0,0]) cube([51,50,20]);
      translate([50,0,3]) cylinder(10,44.8,44.8, $fn=200);
    }
  }
}

sewer_deep_pool_curved_convex_exterior();
//negative();