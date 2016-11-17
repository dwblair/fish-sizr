$fs = 0.01;


laser_length=30;
laser_diam=10;

laser_offset=100; // 10 cm
block_length=laser_offset/2;
block_width=laser_length*1.5;
block_height=laser_diam*1.5;

laser_hole_length=block_width*1.1;

tongue_length=block_length/3;
tongue_width=block_width*.5;
tongue_height=block_height/3;

block_translate_along_length=tongue_length*.8;

tongue_translate_along_length=tongue_length/2;


difference() {
// big block
translate([-block_width/2,block_translate_along_length,-block_height/2])
cube(size=[block_width,block_length,block_height]);

translate([-laser_hole_length/2,50,])
rotate([0,90,0])
 cylinder(h=laser_hole_length, r1=laser_diam/2, r2=laser_diam/2);
}

// tongue
translate([-tongue_width/2,tongue_translate_along_length/2,-tongue_height/2])
cube(size=[tongue_width,tongue_length,tongue_height]);


difference() {
// big block
    
    difference() {
translate([-block_width/2,-(block_translate_along_length+block_length),-block_height/2])
cube(size=[block_width,block_length,block_height]);

// anti-tongue
        
       translate([-tongue_width*1.5/2,-tongue_length*1.5,-tongue_height/2])
cube(size=[tongue_width*1.5,tongue_length,tongue_height]); 
        
    }
    
    
translate([-laser_hole_length/2,-50,])
rotate([0,90,0])
 cylinder(h=laser_hole_length, r1=laser_diam/2, r2=laser_diam/2);
}
