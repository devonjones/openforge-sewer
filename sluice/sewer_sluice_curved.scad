include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module negative() {
  difference() {
    intersection() {
      translate([50,0,0]) union() {
        difference() {
          union() {
            rotate([0,0,6+90]) translate([15,0,0]) cube([50,.75,10]);
            rotate([0,0,25+90]) translate([15,0,0]) cube([50,.75,10]);
            rotate([0,0,45+90]) cube([50,.75,10]);
            rotate([0,0,65+90]) translate([15,0,0]) cube([50,.75,10]);
            rotate([0,0,84+90]) translate([15,0,0]) cube([50,.75,10]);
          }
          cylinder(20,2.5,11, $fn=100);
          difference() {
            cylinder(22,50,50, $fn=100);
            cylinder(20,47.75,39.75, $fn=100);
          }

          difference() {
            cylinder(20,17,22, $fn=100);
            cylinder(20,10,15, $fn=100);
          }
          difference() {
            cylinder(22,40,35, $fn=100);
            cylinder(20,33.75,28.75, $fn=100);
          }
        }
        difference() {
          union() {
            rotate([0,0,15+90])  cube([50,.75,10]);
            rotate([0,0,35+90])  cube([50,.75,10]);
            rotate([0,0,55+90])  cube([50,.75,10]);
            rotate([0,0,75+90])  cube([50,.75,10]);
          }
          cylinder(20,10,15, $fn=100);
          difference() {
            cylinder(22,33,28, $fn=100);
            cylinder(20,17,22, $fn=100);
          }
          difference() {
            cylinder(22,47.5,39, $fn=100);
            cylinder(20,40.75,35.75, $fn=100);
          }
        }


        difference() {
          cylinder(20,2.5,11, $fn=100);
          translate([0,0,-1]) cylinder(22,1.75,10.25, $fn=100);
        }
        difference() {
          cylinder(20,48.25,39.75, $fn=100);
          translate([0,0,-1]) cylinder(22,47.5,39, $fn=100);
        }

        difference() {
          cylinder(20,10,15, $fn=100);
          translate([0,0,-1]) cylinder(22,9.25,14.25, $fn=100);
        }
        difference() {
          cylinder(20,40.75,35.75, $fn=100);
          translate([0,0,-1]) cylinder(22,40,35, $fn=100);
        }

        difference() {
          cylinder(20,17,22, $fn=100);
          translate([0,0,-1]) cylinder(22,16.25,21.25, $fn=100);
        }
        difference() {
          cylinder(20,33.75,28.75, $fn=100);
          translate([0,0,-1]) cylinder(22,33,28, $fn=100);
        }

      }
      translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
        translate([25, 0, 0]) circle(r=25.5, $fn = 100);
        translate([-20,-10,0]) square(20,1);
      }      
    }
    translate([-10,-60.9,-1]) cube([150,61,40]);
    translate([49.9,0,-1]) cube([61,60,40]);
    translate([-1,-1,9.7]) cube([60,60,40]);
  }
}

module sewer_sluice_curved_exterior() {
  difference() {
    union() {
      smooth_tile();
      translate([25,0,0]) smooth_tile();
      translate([0,25,0]) smooth_tile();
      translate([25,25,0]) smooth_tile();
      //translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 26, $fn = 100);
      translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100)
difference() {
        translate([25, 0, 0]) circle(r=25.5, $fn = 100);
        translate([-20,-10,0]) square(20,1);
      }
      translate([50,0,0]) difference() {
        cylinder(9.7,48.6,48.6, $fn=100);
        translate([0,0,-1]) cylinder(12,1,1, $fn=100);
      }
    }
    translate([-10,-60.9,-1]) cube([150,61,40]);
    translate([49.9,0,-1]) cube([61,60,40]);
    translate([-1,-1,9.7]) cube([60,60,40]);
    translate([50,0,7.5]) difference() {
      cylinder(9.7,48.7,48.7, $fn=100);
      cylinder(9.7,48.6,48.6, $fn=100);
    }
    translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
    negative();
  }
}

module sewer_sluice_curved_interior() {
  difference() {
    union() {
      cube([50,50,7.5]);
      translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100)
difference() {
        translate([25, 0, 0]) circle(r=25.5, $fn = 100);
        translate([-20,-10,0]) square(20,1);
      }
      translate([50,0,0]) cylinder(9.7,48.6,48.6, $fn=100);
    }
    translate([-10,-60.9,-1]) cube([150,61,40]);
    translate([49.9,0,-1]) cube([61,60,40]);
    translate([-1,-1,9.7]) cube([60,60,40]);
    translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
      translate([25, 0, 0]) circle(r=25.4, $fn = 100);
      translate([-20,-10,0]) square(20,1);
    }
  }
}

module sewer_sluice_curved_panels() {
  difference() {
    union() {
      translate([.325,.325,7.5]) cube([24.35,24.35,2]);

      translate([25,0,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
      translate([0,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
      translate([25,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
    }
    translate([50,0,0]) cylinder(9.7,48.7,48.7, $fn=100);
  }
  difference() {
    translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
      translate([25, 0, 0]) circle(r=25.49, $fn = 100);
      translate([-20,-10,0]) square(20,1);
    }    
    translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
    translate([-10,-60.9,-1]) cube([150,61,40]);
    translate([49.9,0,-1]) cube([61,60,40]);
    translate([-1,-1,9.7]) cube([60,60,40]);
    negative();
  }
}

sewer_sluice_curved_panels();

//negative();
