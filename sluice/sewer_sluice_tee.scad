include <../../lib/forge_lib.scad>

module smooth_tile() {
 cube([25,25,7.5]);
 translate([.325,.325,7.5]) cube([24.35,24.35,2]);
}
module negative() {
    difference() {
        intersection() {
            union() {
                rotate([0,30,0]) translate([0,-.5,0]) cube([.75,51,10]);
                rotate([0,18,0]) translate([8,-.5,0]) cube([.75,51,10]);
                rotate([0,8,0]) translate([17,-.5,0]) cube([.75,51,10]);
                
                translate([0,11,0]) cube([4.9,.75,10]);
                translate([0,22,0]) cube([4.9,.75,10]);
                translate([0,29,0]) cube([4.9,.75,10]);
                translate([0,40,0]) cube([4.9,.75,10]);
                
                translate([5.0,6,0]) cube([5.3,.75,8.5]);
                translate([5.0,14,0]) cube([5.3,.75,8.5]);
                translate([5.0,25,0]) cube([5.3,.75,8.5]);
                translate([5.0,36,0]) cube([5.3,.75,8.5]);
                translate([5.0,46,0]) cube([5.3,.75,8.5]);
                
                translate([10.5,10,0]) cube([7.9,.75,8.5]);
                translate([10.5,21,0]) cube([7.9,.75,8.5]);
                translate([10.5,31,0]) cube([7.9,.75,8.5]);
                translate([10.5,39,0]) cube([7.9,.75,8.5]);
                
                translate([18,5,0]) cube([15,.75,8.5]);
                translate([18,16,0]) cube([15,.75,8.5]);
                translate([18,24,0]) cube([7.4,.75,8.5]);
                translate([18,33,0]) cube([15.7,.75,8.5]);
                translate([18,45,0]) cube([14.85,.75,8.5]);

                translate([50,0,0]) union() {
                    difference() {
                        union() {
                            rotate([0,0,6+90]) translate([15,0,0]) cube([6.6,.75,10]);
                            rotate([0,0,25+90]) translate([15,0,0]) cube([22,.75,10]);
                            rotate([0,0,45+90]) cube([35,.75,10]);
                            rotate([0,0,65+90]) translate([15,0,0]) cube([20,.75,10]);
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
                    }
                    intersection() {
                        union() {
                            rotate([0,0,15+90])  cube([50,.75,10]);
                            rotate([0,0,35+90])  cube([50,.75,10]);
                            rotate([0,0,55+90])  cube([50,.75,10]);
                            rotate([0,0,75+90])  cube([50,.75,10]);
                        }
                        difference() {
                            cylinder(20,17,22, $fn=100);
                            cylinder(20,10,15, $fn=100);
                        }
                    }
            
                    difference() {
                        cylinder(20,2.5,11, $fn=100);
                        translate([0,0,-1]) cylinder(22,1.75,10.25, $fn=100);
                    }
            
                    difference() {
                        cylinder(20,10,15, $fn=100);
                        translate([0,0,-1]) cylinder(22,9.25,14.25, $fn=100);
                    }
            
                    difference() {
                        cylinder(20,17,22, $fn=100);
                        translate([0,0,-1]) cylinder(22,16.25,21.25, $fn=100);
                    }
                }
                
                translate([50,50,0]) union() {
                    difference() {
                        union() {
                            rotate([0,0,25+180]) translate([15,0,0]) cube([20.5,.75,10]);
                            rotate([0,0,45+180]) cube([35.6,.75,10]);
                            rotate([0,0,65+180]) translate([15,0,0]) cube([23.3,.75,10]);
                            rotate([0,0,84+180]) translate([15,0,0]) cube([13.8,.75,10]);
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
                    }
                    intersection() {
                        union() {
                            rotate([0,0,15+180])  cube([50,.75,10]);
                            rotate([0,0,35+180])  cube([50,.75,10]);
                            rotate([0,0,55+180])  cube([50,.75,10]);
                            rotate([0,0,75+180])  cube([50,.75,10]);
                        }
                        difference() {
                            cylinder(20,17,22, $fn=100);
                            cylinder(20,10,15, $fn=100);
                        }
                    }
                    
                    difference() {
                        cylinder(20,2.5,11, $fn=100);
                        translate([0,0,-1]) cylinder(22,1.75,10.25, $fn=100);
                    }
            
                    difference() {
                        cylinder(20,10,15, $fn=100);
                        translate([0,0,-1]) cylinder(22,9.25,14.25, $fn=100);
                    }
            
                    difference() {
                        cylinder(20,17,22, $fn=100);
                        translate([0,0,-1]) cylinder(22,16.25,21.25, $fn=100);
                    }
                }
            }
            union() {
                translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.5, 25.5, $fn=100);
                translate([0,0,9.6]) cube([50,50,10]);
                translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
                translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
            }
        }
        translate([-10,-60.9,-1]) cube([150,61,40]);
        translate([49.9,0,-1]) cube([61,60,40]);
        translate([-1,-1,9.7]) cube([60,60,40]);
        translate([0,49.9,-1,]) cube([100,100,40]);
    }
}

module sewer_sluice_curved_exterior() {
    difference() {
        union() {
            smooth_tile();
            translate([25,0,0]) smooth_tile();
            translate([0,25,0]) smooth_tile();
            translate([25,25,0]) smooth_tile();
            
            translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100)
difference() {
                translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                translate([-20,-10,0]) square(20,1);
            }
            
            translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100)
difference() {
                translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                translate([-20,-10,0]) square(20,1);
            }
            translate([25,50,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 26, 26, $fn=100);
        }
        translate([-10,-60.9,-1]) cube([150,61,40]);
        translate([49.9,0,-1]) cube([61,60,40]);
        translate([-10,49.9,-1]) cube([150,61,40]);
        translate([-5,-5,9.7]) cube([60,60,40]);
        translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 24.5, 24.5, $fn=100);
        negative();
    }
}

module sewer_sluice_curved_interior() {
    difference() {
        union() {
            cube([50,50,7.5]);
            translate([25,0,7.5]) cube([50,50,2.2]);
            
            translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100)
difference() {
                translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                translate([-20,-10,0]) square(20,1);
            }
            
            translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100)
difference() {
                translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                translate([-20,-10,0]) square(20,1);
            }
            translate([25,50,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 26, 26, $fn=100);
        }
        translate([-10,-60.9,-1]) cube([150,61,40]);
        translate([49.9,0,-1]) cube([61,60,40]);
        translate([-10,49.9,-1]) cube([150,61,40]);
        translate([-5,-5,9.7]) cube([60,60,40]);
        translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100)
difference() {
            translate([25, 0, 0]) circle(r=25.4, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100)
difference() {
            translate([25, 0, 0]) circle(r=25.4, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.4, 25.4, $fn=100);
    }
}

module sewer_sluice_curved_panels() {
    difference() {
        union() {
            translate([.325,.325,7.5]) cube([24.35,24.35,2]);
            translate([0,25,0]) translate([.325,.325,7.5]) cube([24.35,24.35,2]);
        }
        translate([25,50,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 25.95, 25.95, $fn=100);
    }
    difference() {
        union() {
            translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                translate([25, 0, 0]) circle(r=25.49, $fn = 100);
                translate([-20,-10,0]) square(20,1);
            }
            translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                translate([25, 0, 0]) circle(r=25.49, $fn = 100);
                translate([-20,-10,0]) square(20,1);
            }
            translate([25,50,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(50, 25.49, 25.49, $fn=100);
        }
        translate([-10,-60.9,-1]) cube([150,61,40]);
        translate([49.9,0,-1]) cube([61,60,40]);
        translate([-10,49.9,-1]) cube([150,61,40]);
        translate([-5,-5,9.7]) cube([60,60,40]);
        translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([25,51,13.5]) scale([1,1,.4]) rotate([90,0,0]) cylinder(60, 24.5, 24.5, $fn=100);
        negative();
    }       
}




sewer_sluice_curved_panels();

//negative();

