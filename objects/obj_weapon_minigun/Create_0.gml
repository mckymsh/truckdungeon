dist = point_distance(x, y, obj_truck.x, obj_truck.y);
angleDiff = angle_difference(point_direction(obj_truck.x,obj_truck.y,x,y), obj_truck.image_angle);
canClick = true
image_speed = 0;

flash = instance_create_depth
(
	x+lengthdir_x(40,image_angle), 
	y+lengthdir_y(40,image_angle),
	depth-1, 
	obj_maingun_muzzle_flash
)
flash.visible = false;
flash.image_angle = image_angle;