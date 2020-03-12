if(mouse_check_button(mb_left))
{
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
			obj_projectile_minigun
		)
		bullet.image_angle = image_angle;
		bullet.direction = image_angle;
	}
	else
	{
		if (canClick) {
			canClick = false
			audio_play_sound(snd_truck_fire_minigun_spinup,30,false)
			alarm[5] = 5
		}
		
		flash.visible = false;
	}	
}
else
{
	flash.visible = false;
	if(!overheated)
	{
		if(image_speed > 0.01)
		{
			image_speed *= 0.90;
		}
		else
		{
			image_speed = 0;
		}
	}
	else
	{
		image_speed = 1;
	}
}
