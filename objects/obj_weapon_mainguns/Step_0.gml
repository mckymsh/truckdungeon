if(mouse_check_button(mb_left))
{
	if(canShootA)
	{
		canShootA = false;
		canShootB = false;
		alarm[1] = room_speed/fire_speed_ratio;
		var flash = instance_create_layer
		(
			x+lengthdir_x(60,image_angle+12), 
			y+lengthdir_y(60,image_angle+12),
			"Effects", 
			obj_maingun_muzzle_flash
		)
		flash.image_angle = image_angle;
		var bullet = instance_create_layer
		(
			x+lengthdir_x(42, image_angle+18), 
			y+lengthdir_y(42,image_angle+18), 
			"Instances", 
			obj_projectile_maingun
		)		
		bullet.image_angle = image_angle;
		bullet.direction = image_angle;
		bullet.speed = room_speed/2;
	}
	if(canShootB)
	{
		canShootA = false;
		canShootB = false;
		alarm[0] = room_speed/fire_speed_ratio;
		var flash = instance_create_layer
		(
			x+lengthdir_x(60,image_angle-12), 
			y+lengthdir_y(60,image_angle-12),
			"Effects", 
			obj_maingun_muzzle_flash
		)
		flash.image_angle = image_angle;
		var bullet= instance_create_layer
		(
			x+lengthdir_x(42, image_angle-18), 
			y+lengthdir_y(42,image_angle-18), 
			"Instances", 
			obj_projectile_maingun
		)
		bullet.image_angle = image_angle;
		bullet.direction = image_angle;
		bullet.speed = room_speed/2;
	}
}