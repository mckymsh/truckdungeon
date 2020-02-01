direction = image_angle;

speed = clamp(speed, max_reverse_speed_ratio*room_speed, max_forward_speed_ratio*room_speed);

move_wrap(true, true, sprite_width/2);

// So the idle animation doesn't play while moving
if(abs(speed) >= 1)
{
	image_speed = 0;
}
else
{
	image_speed = 1;
}