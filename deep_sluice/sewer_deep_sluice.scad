include <../../lib/forge_lib.scad>

module negative(d=0) {
    translate([6,-1,3]) cube([50-12,52,10]);

    translate([-1,-1,7.7]) cube([52,52,.75]);

    translate([5.35-d,-.7,3]) cube([39.3+2*d,.75,5]);
    translate([5.35-d,49.95,3]) cube([39.3+2*d,.75,5]);

    translate([5.35-d,11,3]) cube([25+2*d,.75,5]);
    translate([5.35-d,19,3]) cube([25+2*d,.75,5]);
    translate([5.35-d,32,3]) cube([25+2*d,.75,5]);
    translate([5.35-d,40,3]) cube([25+2*d,.75,5]);

    translate([20-d,5,3]) cube([25+2*d,.75,5]);
    translate([20-d,14,3]) cube([25+2*d,.75,5]);
    translate([20-d,25,3]) cube([25+2*d,.75,5]);
    translate([20-d,36,3]) cube([25+2*d,.75,5]);
    translate([20-d,44,3]) cube([25+2*d,.75,5]);


    translate([0,7,8.3]) cube([25,.75,7]);
    translate([0,15,8.3]) cube([25,.75,7]);
    translate([0,26,8.3]) cube([25,.75,7]);
    translate([0,34,8.3]) cube([25,.75,7]);
    translate([0,45,8.3]) cube([25,.75,7]);

    translate([25,10,8.3]) cube([25,.75,7]);
    translate([25,22,8.3]) cube([25,.75,7]);
    translate([25,30,8.3]) cube([25,.75,7]);
    translate([25,41,8.3]) cube([25,.75,7]);
}

module straight_sewage_way_exterior() {
  difference() {
    union() {
      cube([50,50,8.4]);
  
      translate([0.1,0,8.5]) hull() {
        cube([6,50,1]);
        translate([1,0,0]) cube([4,50,4]);
      }
      translate([43.9,0,8.5]) hull() {
        cube([6,50,1]);
        translate([1,0,0]) cube([4,50,4]);
      }
    }
    negative();
  }

  translate([0.85,.75,6.5]) hull() {
    cube([6-1.5,48.5,3]);
    translate([1,0,0]) cube([4-1.5,48.5,6-.75]);
  }

  translate([43.9+.75,.75,6.5]) hull() {
    cube([6-1.5,48.5,3]);
    translate([1,0,0]) cube([4-1.5,48.5,6-.75]);
  }
}

module straight_sewage_way_interior() {
  difference() {
    union() {
      cube([50,50,7.7]);
  
    }
    translate([5.36,-1,3]) cube([50-10.72,52,10]);
    frame_square_negative(x, y, l, r, f, b);
  }

  translate([0.84,.74,6.5]) hull() {
    cube([6-1.48,48.52,3.01]);
    translate([1,0,0]) cube([4-1.5,48.5,6-.74]);
  }

  translate([43.9+.74,.74,6.5]) hull() {
    cube([6-1.48,48.52,3.01]);
    translate([1,0,0]) cube([4-1.5,48.5,6-.74]);
  }
}

module straight_sewage_way_panels() {
  difference() {
    union() {
      translate([5.35,-.5,3.01]) cube([50-10.7,51,5]);
  
      translate([0.1,0,8.5]) hull() {
        cube([6,50,1]);
        translate([1,0,0]) cube([4,50,4]);
      }
      translate([43.9,0,8.5]) hull() {
        cube([6,50,1]);
        translate([1,0,0]) cube([4,50,4]);
      }
    }
    negative(d=0.1);
    translate([0.85,.75,8.49]) hull() {
      cube([6-1.5,48.5,1]);
      translate([1,0,0]) cube([4-1.5,48.5,4-.75]);
    }
    translate([43.9+.75,.75,8.49]) hull() {
      cube([6-1.5,48.5,1]);
      translate([1,0,0]) cube([4-1.5,48.5,4-.75]);
    }
  }
}

straight_sewage_way_interior();

//negative();