if(!obj_truck.dying)
{
	if(mouse_check_button(mb_right))
	{
		if(canShootA)
		{
			flashA.visible = true;
			canShootA = false;
			canShootB = false;
			alarm[1] = fire_speed_ratio*room_speed;
		
			var bullet = instance_create_depth
			(
				x+lengthdir_x(50, image_angle+15), 
				y+lengthdir_y(50, image_angle+15), 
				depth+1, 
				obj_projectile_maingun
			)		
			bullet.image_angle = image_angle;
			bullet.direction = image_angle;
		}
		else
		{
			flashA.visible = false;
		}
	
		if(canShootB)
		{
			flashB.visible = true;
			canShootA = false;
			canShootB = false;
			alarm[0] = fire_speed_ratio*room_speed;
		
			var bullet= instance_create_depth
			(
				x+lengthdir_x(50, image_angle-15), 
				y+lengthdir_y(50,image_angle-15), 
				depth+1,  
				obj_projectile_maingun
			)
			bullet.image_angle = image_angle;
			bullet.direction = image_angle;
		}
		else
		{
			flashB.visible = false;
		}
	}
	else
	{
		flashA.visible = false;
		flashB.visible = false;
	}
}