if(stuck)
{
	x = obj_truck.x + lengthdir_x(dist, angleDiff + obj_truck.image_angle);
	y = obj_truck.y + lengthdir_y(dist, angleDiff + obj_truck.image_angle);
	image_angle = obj_truck.image_angle;
}
else
{
	speed = clamp(speed, 0, max_speed_ratio*room_speed);
}