dist = point_distance(x, y, obj_truck.x, obj_truck.y);
angleDiff = angle_difference(point_direction(obj_truck.x,obj_truck.y,x,y), obj_truck.image_angle);

flashA = instance_create_depth
(
	x+lengthdir_x(64,image_angle+12), 
	y+lengthdir_y(64,image_angle+12),
	depth-1, 
	obj_maingun_muzzle_flash
)
flashA.visible = false;
flashA.image_angle = image_angle;

flashB = instance_create_depth
(
	x+lengthdir_x(64,image_angle-12), 
	y+lengthdir_y(64,image_angle-12),
	depth-1, 
	obj_maingun_muzzle_flash
)
flashB.visible = false;
flashB.image_angle = image_angle;

