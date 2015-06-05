pure_base = 25.4;
pure_height = 5;

module molle_two(attachment_size) {
	base = pure_base + attachment_size;
	height = pure_height + attachment_size;
	
	difference() {
		cube(size=[base, base, height], center=true);
		translate([0, 0, -attachment_size/2-1]) {
			cube(size=[base+attachment_size*2, base-attachment_size*2,
				height-attachment_size+1], center=true);
			cube(size=[base-attachment_size*2, base+attachment_size*2,
			    height-attachment_size+1], center=true);
		}
		cube(size=[base - attachment_size*2, base-attachment_size*2, height*2],
		    center=true);
	}
}

module molle_one(attachment_size) {
	base = pure_base + attachment_size;
	height = pure_height + attachment_size;

	difference() {
		cube(size=[base, attachment_size, height], center=true);
		translate([0, 0, -attachment_size/2-1]) {
		    cube(size=[base-attachment_size*2, attachment_size+1, height-attachment_size/2], center=true);
		}
	}
}