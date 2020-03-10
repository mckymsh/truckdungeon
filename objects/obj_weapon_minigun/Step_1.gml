image_angle = point_direction(x, y, mouse_x, mouse_y);

if(mouse_check_button_pressed(mb_left))
{
	image_speed = 1;
	if(!overheated)
	{
		alarm[0] = initial_fire_delay;
		alarm[1] = .75*overheat_time;
		alarm[2] = overheat_time;
	}
	else
	{
		alarm[3] = cooldown_delay;
	}
}