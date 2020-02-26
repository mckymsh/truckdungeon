image_angle = direction;

speed = clamp(speed, 0, max_forward_speed_ratio*room_speed);

if(hp < 1)
{
	destroyed = true;
	instance_destroy();
}