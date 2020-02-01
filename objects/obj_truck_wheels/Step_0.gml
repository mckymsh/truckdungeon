if(keyboard_check(ord("A")))
{
	sprite_index = spr_wheels_left;
}
if(keyboard_check(ord("D")))
{
	sprite_index = spr_wheels_right;
}
if(!((keyboard_check(ord("A"))) || (keyboard_check(ord("D")))))
{
	sprite_index = spr_wheels_straight;
}

if(abs(obj_truck.speed) > 1)
{
	if(keyboard_check(ord("S")))
	{
		image_speed = 0;
	}
	image_speed = 1;
}
else
{
	if(keyboard_check(ord("W")))
	{
		image_speed = 1;
	}
	image_speed = 0;
}