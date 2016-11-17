$fs = 0.01;

laser_radius=10/2; // the radius of the cylindrical laser module

wiggle_radius=13/2;

laser_length=30; // the length of the cylindrical laser module

laser_offset=100; // the horizontal offset between the laser modules (i.e. the reference distance between laser pointer dots

outer_laser_1_angle=0;

outer_laser_2_angle=.0;

depth_laser_angle=0; // the angle of rotation of the 'depth' reference laser module

block_width=laser_radius*3; 
block_height=laser_length;
block_length=laser_offset*1.5;

bevel_width=block_width*1.2;
bevel_length=10;
bevel_height=10;

difference() {
difference() {
    
    // the main shape
	cube (size = [block_width,block_length,block_height], center=true);
    
    // outer # 1
    translate([0,laser_offset/2,0])
    rotate([outer_laser_1_angle,0,0])
    {
    cylinder(h=block_height*1.01, r1=laser_radius, r2=wiggle_radius, center=true);
   }
    
    // outer # 2
    translate([0,-laser_offset/2,0])
    rotate([outer_laser_2_angle,0,0])
    cylinder(h=block_height*1.01, r1=laser_radius, r2=wiggle_radius, center=true);
    
   // inner 
     rotate([depth_laser_angle,0,0])
    cylinder(h=block_height*1.01, r1=laser_radius, r2=wiggle_radius, center=true);
    
}

 translate([0,-block_length/2,-block_height/1.6])
rotate([-20,0,0])
cube (size = [bevel_width,bevel_length,bevel_height], center=true);

translate([0,block_length/2,-block_height/1.6])
rotate([20,0,0])
cube (size = [bevel_width,bevel_length,bevel_height], center=true);

}