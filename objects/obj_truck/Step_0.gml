if(keyboard_check(ord("W")))
{
	speed += acceleration_ratio*room_speed;	
}
if(keyboard_check(ord("S")))
{
	if(speed >= 1)
	{
		speed *= braking_ratio;
	}
	else 
	{
		speed -= reverse_acceleration_ratio*room_speed;
	}
}
if(!((keyboard_check(ord("W"))) || (keyboard_check(ord("S")))))
{
	if((speed < -1) || (1 < speed))
	{
		speed *= deceleration_ratio;
	}
	else
	{
		speed = 0;
	}
}

if(keyboard_check(ord("A")))
{
	if(1 <= abs(speed))
	{
		image_angle += turning_ratio*sign(speed)*sqrt(abs(speed))*turning_increment;	
	}
}
if(keyboard_check(ord("D")))
{
	if(1 <= abs(speed))
	{
		image_angle -= turning_ratio*sign(speed)*sqrt(abs(speed))*turning_increment;	
	}
}

if (keyboard_check_pressed(ord("W")))
{
	// Smoke effect
	var smoke1 = instance_create_layer
		(
			x+lengthdir_x(-60,image_angle+10), 
			y+lengthdir_y(-60,image_angle+10),
			"Effects", 
			obj_truck_smoke
		)
	smoke1.image_angle = image_angle
	var smoke2 = instance_create_layer
		(
			x+lengthdir_x(-60,image_angle-10), 
			y+lengthdir_y(-60,image_angle-10),
			"Effects", 
			obj_truck_smoke
		)
	smoke2.image_angle = image_angle
}

// Check the create event for the weapon enum
if(keyboard_check_pressed(vk_space))
{	
	if(current_weapon == weapon.rocketlauncher)
	{
		if(have_minigun)
		{
			current_weapon = weapon.minigun;
			scr_truck_weaponchange();
		}
	}
	else if(current_weapon == weapon.minigun)
	{
		if(have_rocketlauncher)
		{
			current_weapon = weapon.rocketlauncher;
			scr_truck_weaponchange();
		}
	}	
}

if(stuck)
{
	acceleration_ratio = 0.005;
	max_forward_speed_ratio = 0.1;

	var claw = instance_nearest(x, y, obj_projectile_claw)
	var towgre = claw.source_towgre;
	motion_add
	(
		point_direction(x, y, towgre.x, towgre.y), 
		claw.drag_speed_ratio*room_speed
	);
}
else
{
	acceleration_ratio = 0.01;
	max_forward_speed_ratio = 0.2;
}