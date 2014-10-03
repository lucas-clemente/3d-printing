$fn = 100;

r = 11;
h = 4;

cut_h = 2;
cut_w = 3;
cut_pos = 0.6 * r;

difference() {
	cylinder(h, r, r);

	translate([-cut_pos, -cut_w/2, h - cut_h + 0.01])
		cube([100, cut_w, cut_h]);
}