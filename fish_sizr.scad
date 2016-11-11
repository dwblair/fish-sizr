$fs = 0.01;

laser_radius=1; // the radius of the cylindrical laser module

laser_length=laser_radius*5; // the length of the cylindrical laser module

laser_offset=laser_radius*10; // the horizontal offset between the laser modules (i.e. the reference distance between laser pointer dots

depth_laser_angle=20; // the angle of rotation of the 'depth' reference laser module

block_width=laser_radius*3; 
block_height=laser_length;
block_length=laser_offset*1.5;

difference() {
    
    // the main shape
	cube (size = [block_width,block_length,block_height], center=true);
    
   translate([0,laser_offset/2,0])
   cylinder(h=block_height*1.5, r1=laser_radius, r2=laser_radius, center=true);
    
    
    translate([0,-laser_offset/2,0])
    cylinder(h=block_height*1.5, r1=laser_radius, r2=laser_radius, center=true);
    
     rotate([depth_laser_angle,0,0])
    cylinder(h=block_height*1.5, r1=laser_radius, r2=laser_radius, center=true);
    
}