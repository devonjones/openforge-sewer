include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}

module negative(d=0) {
    intersection() {
        union() {
            rotate([0,30,0]) translate([0,-.5,0]) cube([.75,26.25,10]);
            rotate([0,18,0]) translate([8,-.5,0]) cube([.75,26.25,10]);
            rotate([0,8,0]) translate([17,-.5,0]) cube([.75,25.25,10]);

            #translate([50,0,0]) rotate([0,-30,0]) translate([0,-.5,0]) cube([.75,26.65,10]);
            translate([50,0,0]) rotate([0,-18,0]) translate([-8,-.5,0]) cube([.75,27.25,10]);
            translate([50,0,0]) rotate([0,-8,0]) translate([-17,-.5,0]) cube([.75,25.25,10]);

            translate([0,11,0]) cube([4.9,.75,10]);
            translate([0,22,0]) cube([4.9,.75,10]);
            translate([45.7,9,0]) cube([4.9,.75,10]);
            translate([45.7,20,0]) cube([4.9,.75,10]);

            translate([5.0,6,0]) cube([5.3,.75,8.5]);
            translate([5.0,14,0]) cube([5.3,.75,8.5]);
            translate([5.0,25,0]) cube([5.3,.75,8.5]);
            translate([40.4,4,0]) cube([5.3,.75,8.5]);
            translate([40.4,15,0]) cube([5.3,.75,8.5]);
            translate([40.4,26,0]) cube([5.3,.75,8.5]);

            translate([10.5,10,0]) cube([7.9,.75,8.5]);
            translate([10.5,21,0]) cube([7.9,.75,8.5]);
            translate([32.5,11,0]) cube([7.9,.75,8.5]);
            translate([32.5,22,0]) cube([7.9,.75,8.5]);

            translate([18,5,0]) cube([15,.75,8.5]);
            translate([18,16,0]) cube([15,.75,8.5]);
            translate([18,24,0]) cube([15,.75,8.5]);

            translate([25.3825,24.5,3.6]) difference() {
                cylinder(5,6.96+.75,6.3+.75, $fn=100);
                translate([0,0,-1]) cylinder(7,6.96,6.3, $fn=100);
                translate([-12.5,-25,-1]) cube([25,25,7]);
            }
            
            translate([25.3825,24.5,3.6]) difference() {
                cylinder(5,15.2+.75,13.4+.75, $fn=100);
                translate([0,0,-1]) cylinder(7,15.2,13.4, $fn=100);
                translate([-25,-25,-1]) cube([50,26,7]);
            }
            
            translate([25.44,24.5,3.6]) difference() {
                cylinder(5,22.6+.75,19.75+.75, $fn=100);
                translate([0,0,-1]) cylinder(7,22.8,19.15, $fn=100);
                translate([-25,-25,-1]) cube([50,26,7]);
            }

            translate([25,24.5,3]) cube([.75,7,10]);
            translate([25.44,24.5,3]) difference() {
                union() {
                    rotate([0,0,60]) cube([.75,15,10]);
                    rotate([0,0,25]) cube([.75,15,10]);
                    rotate([0,0,-25]) cube([.75,15,10]);
                    rotate([0,0,-70]) cube([.75,15,10]);
                }
                cylinder(5,6.96+.5,6.3+.5, $fn=100);
            }
            translate([25.44,24.5,3]) difference() {
                union() {
                    cube([.75,20.5,10]);
                    rotate([0,0,70]) cube([.75,20.5,10]);
                    rotate([0,0,35]) cube([.75,20.5,10]);
                    rotate([0,0,-35]) cube([.75,20.5,10]);
                    rotate([0,0,-60]) cube([.75,20.5,10]);
                }
                cylinder(5,15.2+.5,13.4+.5, $fn=100);
            }
            translate([25.44,24.5,3]) difference() {
                union() {
                    rotate([0,0,75]) cube([.75,25,10]);
                    rotate([0,0,45]) cube([.75,25,10]);
                    rotate([0,0,15]) cube([.75,25,10]);
                    rotate([0,0,-15]) cube([.75,25,10]);
                    rotate([0,0,-45]) cube([.75,25,10]);
                    rotate([0,0,-70]) cube([.75,25,10]);
                }
                cylinder(5,22.6+.75,19.75+.75, $fn=100);
            }
        }
        union() {
            intersection() {
                union() {
                    translate([0,-1,0]) cube([50,26,50]);
                    translate([25,25,13.5]) scale([1,1,.4]) sphere(r=25.5, $fn=100);
                }
                translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.5, 25.5, $fn=100);
            }
            translate([0,0,9.6]) cube([50,50,10]);
        }
    }
}

module sewer_sluice_end_exterior() {
    difference() {
        union() {
            smooth_tile();
            translate([25,0,0]) smooth_tile();
            translate([0,25,0]) smooth_tile();
            translate([25,25,0]) smooth_tile();
            intersection() {
                union() {
                    translate([0,-1,0]) cube([50,26,50]);
                    translate([25,25,13.5]) scale([1,1,.4]) sphere(r=26, $fn=100);
                }
                translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 26, 26, $fn=100);
            }
        }
        translate([-10,-60.9,-1]) cube([150,61,40]);
        translate([49.9,0,-1]) cube([61,60,40]);
        translate([-5,-5,9.7]) cube([60,60,40]);

        intersection() {
            union() {
                translate([0,-1,0]) cube([50,26,50]);
                translate([25,25,13.5]) scale([1,1,.4]) sphere(r=24.5, $fn=100);
            }
            translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 24.5, 24.5, $fn=100);
        }
        negative();
    }
}

module sewer_sluice_end_interior() {
    difference() {
        union() {
            cube([50,50,7.5]);
            intersection() {
                union() {
                    translate([0,-1,0]) cube([50,26,50]);
                    translate([25,25,13.5]) scale([1,1,.4]) sphere(r=26, $fn=100);
                }
                translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 26, 26, $fn=100);
            }
        }
        translate([-10,-60.9,-1]) cube([150,61,40]);
        translate([49.9,0,-1]) cube([61,60,40]);
        translate([-5,-5,9.7]) cube([60,60,40]);
        intersection() {
            union() {
                translate([0,-1,0]) cube([50,26,50]);
                translate([25,25,13.5]) scale([1,1,.4]) sphere(r=25.4, $fn=100);
            }
            translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.4, 25.4, $fn=100);
        }
    }
}

module sewer_sluice_end_panels() {
    difference() {
        union() {
            translate([.325,.325,7.5]) cube([24.35,24.35,2]);

            translate([25,0,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([0,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([25,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
        }
        intersection() {
            union() {
                translate([0,-1,0]) cube([50,26,50]);
                translate([25,25,13.5]) scale([1,1,.4]) sphere(r=25.95, $fn=100);
            }
            translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.95, 25.95, $fn=100);
        }
    }
    intersection() {
        difference() {
            intersection() {
                union() {
                    translate([0,-1,0]) cube([50,26,50]);
                    translate([25,25,13.5]) scale([1,1,.4]) sphere(r=25.49, $fn=100);
                }
                translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.49, 25.49, $fn=100);
            }
            intersection() {
                union() {
                    translate([0,-1,0]) cube([50,26,50]);
                    translate([25,25,13.5]) scale([1,1,.4]) sphere(r=24.5, $fn=100);
                }
                translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 24.5, 24.5, $fn=100);
            }
            negative(d=0.1);
        }
        cube([50,50,9.7]);
    }
}

sewer_sluice_end_panels();
