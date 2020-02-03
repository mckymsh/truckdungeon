if(mouse_check_button_pressed(mb_left))
{
	image_speed = 1;
	alarm[0] = initial_fire_delay;
}	
if(mouse_check_button(mb_left))
{
	//canShoot = true;
	if(canShoot)
	{
		flash.visible = true;
		canShoot = false;
		alarm[0] = fire_speed_ratio*room_speed;
		// go go bullet make bang bang
		var bullet= instance_create_depth
		(
			x+lengthdir_x(45, image_angle), 
			y+lengthdir_y(45,image_angle), 
			depth+1,  
			obj_projectile_maingun
		)
		bullet.image_angle = image_angle;
		bullet.direction = image_angle;
		bullet.speed = room_speed/3;
	}
	else
	{
		flash.visible = false;
	}
	
}

if(!mouse_check_button(mb_left))
{
	flash.visible = false;
	if(image_speed > 0.01)
	{
		image_speed *= 0.90;
	}
	else
	{
		image_speed = 0;
	}
	alarm[0] = -1; // cancels alarm
}
