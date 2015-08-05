include <../../lib/forge_lib.scad>

module negative() {
    intersection() {
        intersection() {
            union() {
                translate([0,0,0]) union() {
                    difference() {
                        union() {
                            rotate([0,0,6]) translate([15,0,0]) cube([6.6,.75,10]);
                            rotate([0,0,25]) translate([15,0,0]) cube([22,.75,10]);
                            rotate([0,0,45]) cube([35.6,.75,10]);
                            rotate([0,0,65]) translate([15,0,0]) cube([23.3,.75,10]);
                            rotate([0,0,84]) translate([15,0,0]) cube([13.8,.75,10]); 
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
                            rotate([0,0,15])  cube([50,.75,10]);
                            rotate([0,0,35])  cube([50,.75,10]);
                            rotate([0,0,55])  cube([50,.75,10]);
                            rotate([0,0,75])  cube([50,.75,10]);
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
                
                translate([50,0,0]) union() {
                    difference() {
                        union() {
                            rotate([0,0,6+90]) translate([15,0,0]) cube([6.6,.75,10]);
                            rotate([0,0,25+90]) translate([15,0,0]) cube([22,.75,10]);
                            rotate([0,0,45+90]) cube([35.6,.75,10]);
                            rotate([0,0,65+90]) translate([15,0,0]) cube([23.3,.75,10]);
                            rotate([0,0,84+90]) translate([15,0,0]) cube([13.8,.75,10]); 
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
                
                translate([0,50,0]) union() {
                    difference() {
                        union() {
                            rotate([0,0,6+270]) translate([15,0,0]) cube([6.6,.75,10]);
                            rotate([0,0,25+270]) translate([15,0,0]) cube([22,.75,10]);
                            rotate([0,0,45+270]) cube([35.6,.75,10]);
                            rotate([0,0,65+270]) translate([15,0,0]) cube([23.3,.75,10]);
                            rotate([0,0,84+270]) translate([15,0,0]) cube([13.8,.75,10]); 
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
                            rotate([0,0,15+270])  cube([50,.75,10]);
                            rotate([0,0,35+270])  cube([50,.75,10]);
                            rotate([0,0,55+270])  cube([50,.75,10]);
                            rotate([0,0,75+270])  cube([50,.75,10]);
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
                            rotate([0,0,6+180]) translate([15,0,0]) cube([6.6,.75,10]);
                            rotate([0,0,25+180]) translate([15,0,0]) cube([22,.75,10]);
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
                translate([0,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
                translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
                translate([0,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
                translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
            }
        }
        cube([50,50,9.7]);
    }
}

module sewer_sluice_curved_exterior() {
    difference() {
        union() {
            cube([50,50,9.7]);
            translate([.325,.325,7.5]) cube([50-.325*2,50-.325*2,2]);
        }
        translate([0,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([0,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn=100) translate([25, 0, 0]) circle(r = 24.5, $fn = 100);
        negative();
    }
}

module sewer_sluice_curved_interior() {
    difference() {
        union() {
            cube([50,50,9.7]);
            translate([.325,.325,7.5]) cube([50-.325*2,50-.325*2,2]);
        }
        translate([0,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
            translate([25, 0, 0]) circle(r=25.49, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
            translate([25, 0, 0]) circle(r=25.49, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        translate([0,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
            translate([25, 0, 0]) circle(r=25.49, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
            translate([25, 0, 0]) circle(r=25.49, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
    }
}

module sewer_sluice_curved_panels() {
    difference() {
        union() {
            cube([50,50,9.7]);
            translate([.325,.325,7.5]) cube([50-.325*2,50-.325*2,2]);
        }
        translate([0,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
            translate([25, 0, 0]) circle(r=24.5, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
            translate([25, 0, 0]) circle(r=24.5, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        translate([0,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
            translate([25, 0, 0]) circle(r=24.5, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
            translate([25, 0, 0]) circle(r=24.5, $fn = 100);
            translate([-20,-10,0]) square(20,1);
        }
        negative();
        difference() {
            union() {
                cube([50,50,9.7]);
                translate([.325,.325,7.5]) cube([50-.325*2,50-.325*2,2]);
            }
            union() {
                translate([0,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
                translate([50,0,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
                translate([0,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
                translate([50,50,13.5]) scale([1,1,.4]) rotate_extrude(convexity=10, $fn = 100) difference() {
                    translate([25, 0, 0]) circle(r=25.5, $fn = 100);
                    translate([-20,-10,0]) square(20,1);
                }
            }
        }
    }
}

sewer_sluice_curved_panels();

//negative();

