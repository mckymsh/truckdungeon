newX = 1500;
newY = 1500;

if(!destroyed)
{
	// bang bang
	//scr_towgre_attack_sequence();
	// select random coordinates in viewport

	if(!coordinate_selected)
	{
		var sides = choose(true, false);
		if(sides)
		{
			newX = choose
				(
					view_xport[0]+sprite_width/2,
					view_xport[0]+view_wport[0]-sprite_width/2
				);
			newY = irandom_range
				(
					view_yport[0]+sprite_height/2,
					view_yport[0]+view_hport[0]-sprite_height/2
				);
		}
		if(!sides)
		{
			newX = irandom_range
				(
					view_xport[0]+sprite_width/2,
					view_xport[0]+view_wport[0]-sprite_width/2
				);
			newY = choose
				(
					view_yport[0]+sprite_height/2,
					view_yport[0]+view_hport[0]-sprite_height/2
				);
		}
		coordinate_selected = true;
		show_debug_message("newX:" + string(newX));
		show_debug_message("newY:" + string(newY));
	}

	if(abs(x-newX)>128 || abs(y-newY)>128)
	{
		// turn towards coordinates
		direction = point_direction(x, y, newX, newY);

		// move to coordinates
		speed = 0.2*room_speed;
	}
	else
	{
		//coordinate_selected = false;
		// rotate to player
		direction = point_direction(x, y, obj_truck.x, obj_truck.y);

		// fire claw
	

		// pull claw
	}

	// repeat
}

if(hp < 1)
{
	destroyed = true;
	instance_destroy();
}