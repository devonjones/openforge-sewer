include <../../lib/forge_lib.scad>

module negative(d=0) {
    translate([6,-1,3]) cube([50-12,52,10]);
    difference() {
      translate([50,0,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([50,0,2]) cylinder(12,6,6, $fn=200);
    }
    difference() {
      translate([50,50,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([50,50,2]) cylinder(12,6,6, $fn=200);
    }

    translate([-1,-1,7.7]) cube([52,52,.75]);

    translate([5.35-d,-.7,3]) cube([39.3+2*d,.75,5]);
    translate([5.35-d,49.95,3]) cube([39.3+2*d,.75,5]);
    translate([49.95,5.35-d,3]) cube([.75,39.3+2*d,5]);

    translate([5.35-d,11,3]) cube([25+2*d,.75,5]);
    translate([5.35-d,19,3]) cube([25+2*d,.75,5]);
    translate([5.35-d,32,3]) cube([25+2*d,.75,5]);
    translate([5.35-d,40,3]) cube([25+2*d,.75,5]);

    translate([0,7,8.3]) cube([25,.75,7]);
    translate([0,15,8.3]) cube([25,.75,7]);
    translate([0,26,8.3]) cube([25,.75,7]);
    translate([0,34,8.3]) cube([25,.75,7]);
    translate([0,45,8.3]) cube([25,.75,7]);
}

module sewer_deep_sluice_exterior() {
  difference() {
    union() {
      cube([50,50,8.4]);
  
      translate([0.1,0,8.5]) hull() {
        cube([6,50,1]);
        translate([1,0,0]) cube([4,50,4]);
      }

      difference() {
        union() {
          translate([50,0,8.5]) cylinder(1,6,6, $fn=200);
          translate([50,0,9.5]) cylinder(3,6,5, $fn=200);
          translate([50,50,8.5]) cylinder(1,6,6, $fn=200);
          translate([50,50,9.5]) cylinder(3,6,5, $fn=200);
        }
        translate([50,0,9.5]) cylinder(3.01,0,1, $fn=200);
        translate([50,50,9.5]) cylinder(3.01,0,1, $fn=200);
        translate([0,49.9,0]) cube([100,51,20]);
        translate([0,-50.9,0]) cube([100,51,20]);
        translate([49.9,0,0]) cube([51,50,20]);
      }
    }
    negative();
  }

  translate([0.85,.75,6.5]) hull() {
    cube([6-1.5,48.5,3]);
    translate([1,0,0]) cube([4-1.5,48.5,6-.75]);
  }

  difference() {
    union() {
      translate([50,0,7.5]) cylinder(2,5.25,5.25, $fn=200);
      translate([50,50,7.5]) cylinder(2,5.25,5.25, $fn=200);
    }
    translate([0,49.15,0]) cube([100,51,20]);
    translate([0,-50.15,0]) cube([100,51,20]);
    translate([49.15,0,0]) cube([51,50,20]);
  }
}

module sewer_deep_sluice_interior() {
  difference() {
    union() {
      cube([50,50,8.51]);
    }
    translate([-1,-1,7.7]) cube([20,52,8.5]);
    difference() {
      translate([50,0,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([50,0,2]) cylinder(12,5.26,5.26, $fn=200);
    }
    difference() {
      translate([50,50,3]) cylinder(10,50-6,50-6, $fn=200);
      translate([50,50,2]) cylinder(12,5.25,5.25, $fn=200);
    }
    translate([5.36,-1,3]) cube([50-10.72,52,10]);
    translate([50-.75,-1,7.7]) cube([2,52,1]);
    translate([30,-1.25,7.7]) cube([22,2,1]);
    translate([30,49.25,7.7]) cube([22,2,1]);
    frame_square_negative(x, y, l, r, f, b);
  }

  translate([0.84,.74,6.5]) hull() {
    cube([6-1.48,48.52,3.01]);
    translate([1,0,0]) cube([4-1.5,48.5,6-.74]);
  }

}

module sewer_deep_sluice_panels() {
  difference() {
    union() {
      translate([5.35,-.5,3.01]) cube([20,51,5]);
  
      translate([0.1,0,8.5]) hull() {
        cube([6,50,1]);
        translate([1,0,0]) cube([4,50,4]);
      }
    }
    negative(d=0.1);
    translate([0.85,.75,8.49]) hull() {
      cube([6-1.5,48.5,1]);
      translate([1,0,0]) cube([4-1.5,48.5,4-.75]);
    }
  }
  difference() {
    union() {
      translate([50,0,8.5]) cylinder(1,6,6, $fn=200);
      translate([50,0,9.5]) cylinder(3,6,5, $fn=200);
      translate([50,50,8.5]) cylinder(1,6,6, $fn=200);
      translate([50,50,9.5]) cylinder(3,6,5, $fn=200);
      difference() {
        translate([50,0,3]) cylinder(4.95,6,6, $fn=200);
        translate([50,0,2]) cylinder(12,5.25,5.25, $fn=200);
      }
      difference() {
        translate([50,50,3]) cylinder(4.95,6,6, $fn=200);
        translate([50,50,2]) cylinder(12,5.25,5.25, $fn=200);
      }
    }
    translate([50,0,9.5]) cylinder(3.01,0,1, $fn=200);
    translate([50,50,9.5]) cylinder(3.01,0,1, $fn=200);
    translate([0,49.9,0]) cube([100,51,20]);
    translate([0,-50.9,0]) cube([100,51,20]);
    translate([49.9,0,0]) cube([51,50,20]);
  }
}

sewer_deep_sluice_interior();
