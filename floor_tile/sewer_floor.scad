include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module sewer_floor() {
  difference() {
    union () {
      translate([l, f, 0]) union() {
        translate([0,0,0]) smooth_tile();
        translate([25,0,0]) smooth_tile();
        translate([0,25,0]) smooth_tile();
      }
    }
    frame_square_negative(2, 1, 0, 0, 0, 0,magnet=false);
    frame_square_negative(1, 2, 0, 0, 0, 0,magnet=false);
    translate([25,0,0]) frame_square_negative(1, 1, 0, 0, 0, 0,magnet=false);
    translate([0,25,0]) frame_square_negative(1, 1, 0, 0, 0, 0,magnet=false);
    translate([12.5,12.5,-0.01]) cylinder(1.5875+.3,4.7625/2+.15,4.7625/2+.15, $fn=50);
  }
}

render_floor_tile=false;

if (render_floor_tile) {
  sewer_floor();
}

