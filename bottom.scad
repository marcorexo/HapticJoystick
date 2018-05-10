$fn=50;

module hinge(){
	difference(){
		cylinder(4, 4, 4, center=true);
		cylinder(8, 2, 2, center=true);
	}
}

/*
//strengthening bar
module motorHolder() {
difference(){
	union(){
		difference(){
			translate([0, -5, 0])
			cube([19, 9, 8], center=true);
			cylinder(9, 7.0, 7.0, center=true);
		}
		difference(){
			cylinder(8.5, 9.0, 9.0, center=true);
		   cylinder(11, 8.0, 8.0, center=true);

			
		}
		//top walling cylinder 9 - (2*1.2)
		difference(){
			translate([0, 0, -2])
			cylinder(1.5, 9.0, 9.0, center=true);
			translate([0, 0, -2])
			cylinder(1.7, 6.3, 6.3, center=true);
		}
		
		difference(){
			translate([0, 0, 2])
			cylinder(1.6, 9, 9, center=true);
			translate([0, 0, 2])
			cylinder(1.8, 6.3, 6.3, center=true);
		}
	}
	//cover cube
	translate([-0, 6.0, 0])
	cube([25, 15, 15], center=true);
			translate([-3, -2.9, 0])
			cube([14, 10, 2.5], center=true);
	}
}
*/

module motorHolder() {
difference(){
	union(){
		difference(){
			translate([0, -5, 0])
			cube([19, 9, 8], center=true);
			cylinder(9, 7.0, 7.0, center=true);
		}
		difference(){
		   cylinder(8.5, 9.0, 9.0, center=true);
		   cylinder(11, 8.0, 8.0, center=true);

			
		}
		//top walling cylinder 9 - (2*1.2)
		difference(){
			translate([0, 0, -2])
			cylinder(1.5, 9.0, 9.0, center=true);
			translate([0, 0, -2])
			cylinder(1.7, 6.3, 6.3, center=true);
		}
		
		difference(){
			translate([0, 0, 0.9])
			cylinder(1.6, 9, 9, center=true);
			translate([0, 0, 0.9])
			cylinder(1.8, 6.3, 6.3, center=true);
		}
	}
	//cover cube
	translate([-0, 6.0, 0])
	cube([25, 15, 15], center=true);
			translate([-3, -2.9, 0])
			cube([14, 10, 2.5], center=true);
	}
}

//screws
difference(){
	translate([-10, -13.2, 0])
	cube([10, 9, 10], center=true);
	translate([-10, -13.7, -2])
	cylinder(12, 1.15, 1.15, center=true);
}

difference(){
difference(){ //a
	difference(){ //b
	//1/2 structure
	union(){ //1
			//big cylinder
			translate([-35, 22, -6.25])
			rotate([0, 90, 0])
			cylinder(6.25, 6.25, 6.25);

			//long cylinder
			translate([-63.5, 22, -6])
			rotate([0, 90, 0])
			cylinder(33.3, 3.8, 3.8);

			//small pot key
			translate([-66.5, 23.5, -7])
			cube([3.5, 2, 3]);
			translate([-66.5, 18.5, -7])
			cube([3.5, 2, 3]);
			translate([-68.3, 18.5, -7])
			cube([2, 7, 3]);
			translate([-73.3, 21, -6.6])
			cube([6, 2.4, 0.9]);//inserter

		difference(){ //2
			//crate base
			difference(){ //3
				union(){ //4
					difference(){  //5
						cube([60, 68, 11], center = true);
						translate([12, 20, 0])
						cube([60, 57, 13], center = true);
					} //5
				} //4

					translate([0, -1, -3])
					difference(){
						translate([-1, -5, 0])
						cube([54, 52, 15], center = true);
						translate([9, 16, 0])
						cube([57, 50, 17], center = true);
					}
			//create pot hole at base
			translate([14, -9.3, -5.8])
			rotate([90, 0, 0])
		cylinder(5, 5.7, 5.7, center = true);
			} //3
		} //2
	}
}//b

			//hole
			//small circle
			translate([-64.6, 22, -6])
			rotate([0, 90, 0])
			cylinder(43.3, 2.0, 2.0);
}

translate([-24, 30, -4])
cylinder(6, 1.15, 1.15, center=true);
}

//mirror([0, 0, 1])
//old : translate([14, -18.3, -6])
translate([14, -16.3, -3])
rotate([-90, 0, 0])
motorHolder();

/*
translate([-24,0,-8])
%cube([12, 68, 5],center=true);
translate([-20, -34, -10])
cube([23, 25.5, 5]);
*/


