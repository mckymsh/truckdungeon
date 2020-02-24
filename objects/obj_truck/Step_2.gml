direction = image_angle;

speed = clamp(speed, max_reverse_speed_ratio*room_speed, max_forward_speed_ratio*room_speed);
x = clamp(x, 0+sprite_xoffset, room_width-sprite_xoffset);
y = clamp(y, 0+sprite_yoffset, room_width-sprite_yoffset);

// So the idle animation doesn't play while moving
if(abs(speed) >= 1)
{
	image_speed = 0;
}
else
{
	image_speed = 1;
}

show_debug_message(string(hp));