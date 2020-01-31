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
	sprite_index = spr_truck_left;
	if(1 <= abs(speed))
	{
		image_angle += turning_ratio*sign(speed)*sqrt(abs(speed))*turning_increment;	
	}
}
if(keyboard_check(ord("D")))
{
	sprite_index = spr_truck_right;
	if(1 <= abs(speed))
	{
		image_angle -= turning_ratio*sign(speed)*sqrt(abs(speed))*turning_increment;	
	}
}
if(!((keyboard_check(ord("A"))) || (keyboard_check(ord("D")))))
{
	sprite_index = spr_truck;
}
