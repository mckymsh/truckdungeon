x = obj_truck.x + lengthdir_x(dist, angleDiff + obj_truck.image_angle);
y = obj_truck.y + lengthdir_y(dist, angleDiff + obj_truck.image_angle);

flash.x = x+lengthdir_x(36,image_angle); 
flash.y = y+lengthdir_y(36,image_angle);
flash.image_angle = image_angle;

if(mouse_check_button_released(mb_left))
{
	if(overheated)
	{
		alarm[3] = cooldown_delay; // reset alarm
	}
	else
	{
		if(alarm[1] > 0)
		{
			alarm[1] = -1;
		}
		if(alarm[2] > 0)
		{
			alarm[2] = -1;
		}
	}
}

if(!mouse_check_button(mb_left))
{
	canShoot = false;
	if(alarm[4] < 0)
	{
		alarm[4] = 0.25 * cooldown_delay;
	}
}