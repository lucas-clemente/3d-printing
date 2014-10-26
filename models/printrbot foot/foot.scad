$fn = 100;

feet_d = 94;
l = feet_d + 15;
w = 22;
h = 4;

cut_h = 2;
cut_w = 3;
cut_pos = 0.3 * w;

cut_l = 100;

difference() {
	cube([w, l, h], center = true);

	translate([cut_l/2 - cut_pos, feet_d / 2, h - cut_h * 3/2 + 0.01])
		cube([cut_l, cut_w, cut_h], center = true);

	translate([cut_l/2 - cut_pos, - feet_d / 2, h - cut_h * 3/2 + 0.01])
		cube([cut_l, cut_w, cut_h], center = true);
}