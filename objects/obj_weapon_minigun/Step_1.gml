if(!keyboard_aiming)
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
else
{
	if(keyboard_check(vk_left))
	{
		image_angle += 5;
	}
	if(keyboard_check(vk_right))
	{
		image_angle -= 5;
	}
}

if(keyboard_check(vk_left) || keyboard_check(vk_right))
{
	keyboard_aiming = true;
}