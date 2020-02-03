if(mouse_check_button(mb_left))
{
	if(canShoot)
	{
		canShoot = false;
		alarm[0] = initial_fire_delay;
		var rocket= instance_create_depth
		(
			x,//+lengthdir_x(18, image_angle-180), 
			y,//+lengthdir_y(18, image_angle-180), 
			depth+1,  
			obj_projectile_rocket
		)
		rocket.image_angle = image_angle;
		rocket.direction = image_angle;
	}
}