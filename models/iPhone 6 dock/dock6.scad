$fn = 200;

r = 35;
w = 75;

iphone_w = 67;
iphone_d = 8;
iphone_tilt = 10;
iphone_pos = 0.4; // in units of r

lightning_h = 25;
lightning_w = 8.8;
lightning_d = 5.8;

cable_d = 4;
cable_bend_r = 8;


difference() {
	// Base
	intersection() {
		translate([0, w/2])
		rotate([90])
			cylinder(w, r, r);
		translate([-r, -w, 0])
			cube(2*w);
	}

	rotate([0, -iphone_tilt])
	translate([iphone_pos * r, 0, 0])
		union() {
			// iPhone cutout
			translate([-iphone_d/2, -iphone_w/2, lightning_h])
				cube([iphone_d, iphone_w, 100]);

			// Lightning cutout
			translate([0, 0, -10])
			resize([lightning_d, lightning_w, 100])
				cylinder(1, 1, 1);
		}

	// Cable cutout
	rotate([0, 0, 180])
	translate([-iphone_pos*r, -cable_d/2, -0.1])
		cube([1000, cable_d, cable_d]);

	// Cable bend
	translate([iphone_pos*r - cable_bend_r * 1.2, 0, cable_bend_r])
	rotate([90])
	intersection() {
		rotate_extrude()
		translate([cable_bend_r, 0, 0])
			circle(cable_d/2);
		translate([0, -10, -5])
			cube(10);
	}
}


