include <../../lib/forge_lib.scad>

module sewer_corner_exterior(x) {
  difference() {
    union() {
      translate([0,0,0]) cube([25*x,25,37.8+3.7+7.5]);
    }
    translate([-1,-14,34]) rotate([0,90,0]) scale([.95,1.05,1]) cylinder(x*25+2,29,29,$fn=200);
    translate([-14,-1,34]) rotate([0,90,90]) scale([.95,1.05,1]) cylinder(x*25+2,29,29,$fn=200);

    translate([-1,-1,13.2]) cube([25*x+2,27,.75]);
    translate([-1,-1,21.9]) cube([25*x+2,27,.75]);
    translate([-1,-1,28.9]) cube([25*x+2,27,.75]);
    translate([-1,-1,36.8]) cube([25*x+2,27,.75]);
    translate([-1,-1,41.3]) cube([25*x+2,27,.75]);

    translate([-1,9,-1]) cube([25*x+2,.75,14.3]);
    translate([9.5,-1,-1]) cube([.75,27,14.3]);
    translate([19.5,-1,-1]) cube([.75,27,14.3]);

    translate([-1,18,13.5]) cube([25*x+2,.75,9]);
    translate([16.5,-1,13.9]) cube([1,27,8.5]);

    translate([19.5,-1,22]) cube([.75,27,7]);

    translate([-1,20,28.9]) cube([25*x+2,.75,8.5]);

    translate([17.5,-1,37]) cube([.75,27,4.5]);

    translate([-1,19,41.3]) cube([25*x+2,.75,8.5]);
    translate([20.5,-1,41.5]) cube([.75,27,8]);
  }
  difference() {
    union() {
      translate([2,2,0]) cube([25*x-4,25-4,37.8+3.7+7.5-2]);
    }
    translate([-1,-14,34]) rotate([0,90,0]) scale([.95,1.05,1]) cylinder(x*25+2,31,31,$fn=200);
    translate([-14,-1,34]) rotate([0,90,90]) scale([.95,1.05,1]) cylinder(x*25+2,31,31,$fn=200);
  }
}

module sewer_corner_interior(x) {
  difference() {
    union() {
      translate([.5,.5,0]) cube([25*x-1,25-1,37.8+3.7+7]);
    }
    translate([-1,-14,34]) rotate([0,90,0]) scale([.95,1.05,1]) cylinder(x*25+2,29.99,29.99,$fn=200);
    translate([-14,-1,34]) rotate([0,90,90]) scale([.95,1.05,1]) cylinder(x*25+2,29.99,29.99,$fn=200);
    frame_square_negative(x,1);
  }
}

module sewer_corner_panels(x) {
  difference() {
    sewer_corner_exterior(x);
    difference() {
      union() {
        translate([.5,.5,-1]) cube([25*x-1,25-1,37.8+3.7+7+1]);
      }
      translate([-1,-14,34]) rotate([0,90,0]) scale([.95,1.05,1]) cylinder(x*25+2,30,30,$fn=200);
    translate([-14,-1,34]) rotate([0,90,90]) scale([.95,1.05,1]) cylinder(x*25+2,30,30,$fn=200);
    }
  }
}

render_exterior=false;
render_interior=false;
render_panels=false;

if (render_exterior) {
  sewer_corner_exterior(1);
} else if (render_interior) {
  sewer_corner_interior(1);
} else if (render_panels) {
  sewer_corner_panels(1);
}

