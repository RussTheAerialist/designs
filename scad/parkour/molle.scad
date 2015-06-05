use <../libraries/obiscad/obiscad/vector.scad>;
use <../libraries/obiscad/obiscad/bevel.scad>;

pure_base = 31;
pure_height = 5;

module molle(attachment_size) {
	base = pure_base + attachment_size;
	height = pure_height + attachment_size;

	difference() {
		cube(size=[base, attachment_size, height], center=true);
		translate([0, 0, -attachment_size/2-1]) {
		    cube(size=[base-attachment_size*2, attachment_size+1, height-attachment_size/2], center=true);
		}
	}
}