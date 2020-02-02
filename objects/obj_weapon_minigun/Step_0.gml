if(mouse_check_button(mb_left))
{
	image_speed = 1;
	alarm[1] = fire_speed_ratio*room_speed;
	
	if(canShootB)
	{
		flash = instance_create_layer
		(
			x+lengthdir_x(40,image_angle), 
			y+lengthdir_y(40,image_angle),
			"Effects", 
			obj_maingun_muzzle_flash
		)
		flash.image_angle = image_angle;
	}
}
if(!mouse_check_button(mb_left))
{
	image_speed = 0;
}
