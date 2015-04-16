module led(diameter, height, lip, adjust) {
  difference() {
    union() {
      hull() {
        translate([0, 0, height-diameter/2]) {
            sphere(d=diameter, $fn=20);
        }
        cylinder(d=diameter, h=height-(diameter/2), $fn=20);
      }
      cylinder(d=diameter+adjust, h=lip, $fn=20);
    }
    translate([-diameter, diameter/2 , -1]) {
       cube(size=[diameter*2, 5, height+1]);
    }
  }
}

led(5.0, 8.8, 1.0, 0.9);
