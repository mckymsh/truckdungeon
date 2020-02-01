if(keyboard_check(ord("W")))
{
	speed += 0.01*room_speed;	
}
if(keyboard_check(ord("S")))
{
	if(speed >= 1)
	{
		speed /= 2;
	}
	else 
	{
		speed -= 0.01*room_speed;
	}
}
if(!((keyboard_check(ord("W"))) || (keyboard_check(ord("S")))))
{
	if((speed < -1) || (1 < speed))
	{
		speed *= 0.95;
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