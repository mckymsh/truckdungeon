if(stuck)
{
	x = obj_truck.x;
	y = obj_truck.y;
}
else
{
	speed = acceleration_ratio*room_speed;
}

if(point_distance(x, y, source_towgre.x, source_towgre.y) > breaking_distance)
{
	instance_destroy();
}