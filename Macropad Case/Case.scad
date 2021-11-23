size = [5, 2];
border = 5;
boxDepth = 15;

//top
/* difference() {

  cube([19.05*size[0]+2*border, 19.05*size[1]+2*border, 5.5]);

  union() {
    translate([border, border, 2]) {
      for(i = [0 : 1 : size[0]-1]) for(j = [0 : 1 : size[1]-1]) { //all the cutouts for the switches
        translate([i*19.05+border/2, j*19.05+border/2, 0]) cutOut();
      }
    }
    translate([border, border, 3.5]) cube([(size[0]) * 19.05, (size[1]) * 19.05, 2]);
    translate([border/2, border/2, 0]) cube([(size[0]) * 19.05 + border, (size[1]) * 19.05 + border, 2]);
  }
} */

//bottom
translate([0, 0, -20]) {
  difference() {
    /* translate([0, 0, 0]) cube([(size[0]) * 19.05 + 2*border, (size[1]) * 19.05 + 2*border, boxDepth]); //main cube

    translate([border, border, border/2]) cube([(size[0]) * 19.05, (size[1]) * 19.05, boxDepth-border/2]); //main hollow bit */

    translate([0, 18+5+border, border/2]) proMicro();
  }
  /* difference() {
    translate([0, 0, 15]) cube([(size[0]) * 19.05 + border*2, (size[1]) * 19.05 + border*2, 2]); //bit at top
    difference() {
      translate([0, 0, 15]) cube([(size[0]) * 19.05 + border*2, (size[1]) * 19.05 + border*2, 2]); //bit at top
      translate([border/2, border/2, 15]) cube([(size[0]) * 19.05 + border, (size[1]) * 19.05 + border, 2]); //bit at top
    }
    translate([border, border, 15]) cube([(size[0]) * 19.05, (size[1]) * 19.05, 2]); //bit at top
  } */
}

//pro micro
module proMicro() {
  translate([0, 0, 0]) rotate([0, 0, -90]) union() {
    translate([0, 1, 0]) cube([18, 33, 1.5]);
    translate([5, 0, 1.5]) cube([8, 5, 2]);
    translate([0, 3, 1.5]) cube([18, 2*border, 2]);
  }
}

module cutOut() {
  union() {
    translate([1, 1, 0]) cube([14, 14, 1.5]);
  }
}
