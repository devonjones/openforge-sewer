include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module negative() {
  intersection() {
    union() {
      rotate([0,30,0]) translate([0,-.5,0]) cube([.75,51,10]);
      rotate([0,18,0]) translate([8,-.5,0]) cube([.75,51,10]);
      rotate([0,8,0]) translate([17,-.5,0]) cube([.75,51,10]);

      translate([50,0,0]) rotate([0,-30,0]) translate([0,-.5,0]) cube([.75,51,10]);
      translate([50,0,0]) rotate([0,-18,0]) translate([-8,-.5,0]) cube([.75,51,10]);
      translate([50,0,0]) rotate([0,-8,0]) translate([-17,-.5,0]) cube([.75,51,10]);

      translate([0,11,0]) cube([4.9,.75,10]);
      translate([0,22,0]) cube([4.9,.75,10]);
      translate([0,29,0]) cube([4.9,.75,10]);
      translate([0,40,0]) cube([4.9,.75,10]);
      translate([45.7,9,0]) cube([4.9,.75,10]);
      translate([45.7,20,0]) cube([4.9,.75,10]);
      translate([45.7,31,0]) cube([4.9,.75,10]);
      translate([45.7,42,0]) cube([4.9,.75,10]);

      translate([5.0,6,0]) cube([5.3,.75,8.5]);
      translate([5.0,14,0]) cube([5.3,.75,8.5]);
      translate([5.0,25,0]) cube([5.3,.75,8.5]);
      translate([5.0,36,0]) cube([5.3,.75,8.5]);
      translate([5.0,46,0]) cube([5.3,.75,8.5]);
      translate([40.4,4,0]) cube([5.3,.75,8.5]);
      translate([40.4,15,0]) cube([5.3,.75,8.5]);
      translate([40.4,26,0]) cube([5.3,.75,8.5]);
      translate([40.4,36,0]) cube([5.3,.75,8.5]);
      translate([40.4,43,0]) cube([5.3,.75,8.5]);

      translate([10.5,10,0]) cube([7.9,.75,8.5]);
      translate([10.5,21,0]) cube([7.9,.75,8.5]);
      translate([10.5,31,0]) cube([7.9,.75,8.5]);
      translate([10.5,39,0]) cube([7.9,.75,8.5]);
      translate([32.5,11,0]) cube([7.9,.75,8.5]);
      translate([32.5,22,0]) cube([7.9,.75,8.5]);
      translate([32.5,30,0]) cube([7.9,.75,8.5]);
      translate([32.5,38,0]) cube([7.9,.75,8.5]);

      translate([18,5,0]) cube([15,.75,8.5]);
      translate([18,16,0]) cube([15,.75,8.5]);
      translate([18,24,0]) cube([15,.75,8.5]);
      translate([18,33,0]) cube([15,.75,8.5]);
      translate([18,45,0]) cube([15,.75,8.5]);
    }
    union() {
      translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.5, 25.5, $fn=100);
      translate([0,0,9.6]) cube([50,50,10]);
    }
  }
}

module sewer_sluice_straight_exterior() {
  difference() {
    union() {
      smooth_tile();
      translate([25,0,0]) smooth_tile();
      translate([0,25,0]) smooth_tile();
      translate([25,25,0]) smooth_tile();
      translate([25,50,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 26, 26, $fn=100);
    }
    translate([-10,-60.9,-1]) cube([150,61,40]);
    translate([49.9,0,-1]) cube([61,60,40]);
    translate([-5,-5,9.7]) cube([60,60,40]);
    translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 24.5, 24.5, $fn=100);
    negative();
  }
}

module sewer_sluice_straight_interior() {
  difference() {
    union() {
      cube([50,50,7.5]);
      translate([25,50,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 26, 26, $fn=100);
    }
    translate([-10,-60.9,-1]) cube([150,61,40]);
    translate([49.9,0,-1]) cube([61,60,40]);
    translate([-5,-5,9.7]) cube([60,60,40]);
    translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.4, 25.4, $fn=100);
  }
}

module sewer_sluice_straight_panels() {
  difference() {
    union() {
      translate([.325,.325,7.5]) cube([24.35,24.35,2]);

      translate([25,0,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
      translate([0,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
      translate([25,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
    }
    translate([25,50,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.95, 25.95, $fn=100);
  }
  difference() {
    translate([25,50,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(50, 25.49, 25.49, $fn=100);
    translate([-10,-60.9,-1]) cube([150,61,40]);
    translate([49.9,0,-1]) cube([61,60,40]);
    translate([-5,-5,9.7]) cube([60,60,40]);
    translate([25,51.5,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(61, 24.5, 24.5, $fn=100);
    negative();
  }
}

sewer_sluice_straight_interior();
