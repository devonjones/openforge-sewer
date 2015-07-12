include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module negative(d=0) {
  difference() {
    translate([50,0,3]) cylinder(10,50-6,50-6, $fn=200);
    translate([50,0,2]) cylinder(12,6,6, $fn=200);
  }

  difference() {
    translate([50,0,7.5]) cylinder(2.1,50,50, $fn=200);
    translate([50,0,7]) cylinder(3,49.9,49.9, $fn=200);
  }

  #difference() {
    translate([50,0,7.7]) cylinder(.75,50,50, $fn=200);
    translate([50,0,7]) cylinder(2,5.25,5.25, $fn=200);
  }

  translate([5.25-d,-.5,3]) cube([39.5+2*d,.75,5]);
  translate([49.75,5.25-d,3]) cube([.75,39.5+2*d,5]);

  translate([50,0,3]) rotate([0,0,90+84]) translate([19.75,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+74]) translate([19.75,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+66]) translate([19.75,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+57]) translate([19.75,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+44]) translate([19.75,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+36]) translate([19.75,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+25]) translate([19.75,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+14]) translate([19.75,0,0]) cube([25,.75,5]);
  translate([50,0,3]) rotate([0,0,90+6]) translate([19.75,0,0]) cube([25,.75,5]);

  translate([50,0,8.3]) rotate([0,0,90+82]) translate([24.95,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+71]) translate([24.95,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+61]) translate([24.95,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+49]) translate([24.95,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+39]) translate([24.95,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+31]) translate([24.95,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+22]) translate([24.95,0,0]) cube([25,.75,7]);
  translate([50,0,8.3]) rotate([0,0,90+12]) translate([24.95,0,0]) cube([25,.75,7]);
}

module sewer_deep_sluice_curved_exterior() {
  difference() {
    union() {
      smooth_tile();
      translate([25,0,0]) smooth_tile();
      translate([0,25,0]) smooth_tile();
      translate([25,25,0]) smooth_tile();
      translate([50,0,0]) cylinder(9.5,49.9,49.9, $fn=200);

      difference() {
        union() {
          translate([50,0,8.5]) cylinder(1,49.9,49.9, $fn=200);
          translate([50,0,9.5]) cylinder(3,49.9,48.9, $fn=200);
        }
        translate([50,0,8]) cylinder(7,43.9,43.9, $fn=200);
        translate([50,0,9.5]) cylinder(3.01,43.9,44.9, $fn=200);
      }

      difference() {
        union() {
          translate([50,0,8.5]) cylinder(1,6,6, $fn=200);
          translate([50,0,9.5]) cylinder(3,6,5, $fn=200);
        }
        translate([50,0,9.5]) cylinder(3.01,0,1, $fn=200);
        translate([0,-50.9,0]) cube([100,51,20]);
        translate([49.9,0,0]) cube([51,50,20]);
      }
    }
    translate([0,-50.9,-1]) cube([100,51,20]);
    translate([49.9,0,-1]) cube([51,50,20]);
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

module sewer_deep_sluice_curved_interior() {
  difference() {
    union() {
      cube([50,50,7.5]);
      translate([50,0,0]) cylinder(8.5,5.25,5.25, $fn=200);
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
      translate([50,0,3]) cylinder(10,50-5.25,50-5.25, $fn=200);
      translate([50,0,2]) cylinder(12,5.25,5.25, $fn=200);
    }
  }
}

module sewer_deep_sluice_curved_panels() {
  difference() {
    union() {
      difference() {
        union() {
          translate([.325,.325,7.5]) cube([24.35,24.35,2]);
          translate([25,0,0])  translate([.325,.325,7.5]) cube([24.35,24.35,2]);
          translate([0,25,0])  translate([.325,.325,7.5]) cube([24.35,24.35,2]);
          translate([25,25,0])  translate([.325,.325,7.5]) cube([24.35,24.35,2]);
        }
        translate([50,0,7.5]) cylinder(2.1,50,50, $fn=200);
      }
      difference() {
        translate([50,0,3]) cylinder(6.5,44.85,44.85, $fn=200);
        translate([50,0,2]) cylinder(12,5.25,5.25, $fn=200);
      }

      difference() {
        union() {
          translate([50,0,8.5]) cylinder(1,49.9,49.9, $fn=200);
          translate([50,0,9.5]) cylinder(3,49.9,48.9, $fn=200);
        }
        translate([50,0,8]) cylinder(7,43.9,43.9, $fn=200);
        translate([50,0,9.5]) cylinder(3.01,43.9,44.9, $fn=200);
      }

      difference() {
        union() {
          translate([50,0,8.5]) cylinder(1,6,6, $fn=200);
          translate([50,0,9.5]) cylinder(3,6,5, $fn=200);
        }
        translate([50,0,9.5]) cylinder(3.01,0,1, $fn=200);
        translate([0,-50.9,0]) cube([100,51,20]);
        translate([49.9,0,0]) cube([51,50,20]);
      }

    }
    translate([0,-50.9,-1]) cube([100,51,20]);
    translate([49.9,0,-1]) cube([51,50,20]);
    negative(d=0.1);
    difference() {
      union() {
        translate([50,0,8]) cylinder(1.5,49.15,49.15, $fn=200);
        translate([50,0,9.5]) cylinder(2.25,49.15,48.15, $fn=200);
      }
      translate([50,0,7]) cylinder(7,44.65,44.65, $fn=200);
      translate([50,0,9.5]) cylinder(2.26,44.65,45.65, $fn=200);
      translate([0,-50.25,0]) cube([100,51,20]);
      translate([49.25,0,0]) cube([51,50,20]);
      translate([50,0,3]) cylinder(10,44.8,44.8, $fn=200);
    }
  }
}

sewer_deep_sluice_curved_panels();

//negative();