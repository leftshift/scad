$fn = 200;
height = 4;
cable_radius = 4;

outer_radius = cable_radius * 1.7;


difference(){
    hull() {
        cylinder(h=height, r=outer_radius);

        translate([cable_radius * 6, 0, 0])
            cylinder(h=height, r=outer_radius);
    }
    for (i=[0:2]) {
        translate([i * 3 * cable_radius, 0, 0])
            cylinder(h=height, r=cable_radius);
    }
}