
module bar_top(y) {
    difference() {
        cube([y*25,6,2]);
        for ( i = [1 : y*2] ) {
            translate([3,12.5*i-6.25,-1]) cylinder(4,2.05/2,2.05/2, $fn=100);
            translate([3,12.5*i-6.25,1]) cylinder(4,4/2,4/2, $fn=100);
        }
    }
}

module bars(y) {
    for ( i = [1 : y*2] ) {
        translate([12.5,12.5*i-6.25,-1]) cylinder(52,2.05/2,2.05/2, $fn=100);
    }
}

module bars_notch(y) {
    for ( i = [1 : y*2] ) {
        translate([12.5,12.5*i-6.25,-1]) cylinder(52,2.05/2,2.05/2, $fn=100);
        translate([12.5,12.5*i-6.25,-1]) cylinder(2,4/2,4/2, $fn=100);
    }
}

module frame(y) {
    translate([12.5-6.2/2,-1,50-2.1]) cube([6.2,y*25+2,2.2]);
}

bar_y = 6;
frame(bar_y);

