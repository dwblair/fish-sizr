$fs = 0.01;




height=20;
radius=10;
screw_diam=3;

cylinder_height=height/3;
laser_diameter=10;
laser_height=80;

laser_offset=100;


difference() {
translate([-height/4,5,-height/4])
//cylinder(h=cylinder_height,r1=radius,r2=radius);
cube(size=[height/2,20,height/2]);
    
    translate([0,-radius,-height/2])
    cylinder(h=height,r1=screw_diam/2,r2=screw_diam/2);
}


difference() {
    
translate([-height,20,-height/2])
cube(size=[2*height,laser_offset/1.5,height]);
    
rotate([0,90,0])
translate([0,laser_offset/2,0])
    cylinder(h=laser_height,r1=laser_diameter/2,r2=laser_diameter/2,center=true);
    
}

difference() {
    
    
translate([-height,-height,height/2])
rotate([180,0,0])
cube(size=[2*height,laser_offset/1.5,height]);
    
rotate([0,90,0])
translate([0,laser_offset/2,0])
    cylinder(h=laser_height,r1=laser_diameter/2,r2=laser_diameter/2,center=true);
    
}