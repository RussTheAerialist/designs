use <../libraries/obiscad/obiscad/vector.scad>;
use <../libraries/obiscad/obiscad/attach.scad>;
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

module molle_chamfered() {
    spacer = 5;

	//      position,             direction, cero?
	ec1 = [ [0, spacer-2.5, spacer], [1, 0, 0],  0 ];
	en1 = [ ec1[0],              [0, 1, 1],  0 ];

	ec2 = [ [0, -spacer+2.5, spacer], [1, 0, 0],  0 ];
	en2 = [ ec2[0],              [0, -1, 1],  0 ];

	difference() {
		molle(5);
		bevel(ec1, en1, cr=2, cres=10, l=pure_base + spacer + 2);
		bevel(ec2, en2, cr=2, cres=10, l=pure_base + spacer + 2);
	}
}