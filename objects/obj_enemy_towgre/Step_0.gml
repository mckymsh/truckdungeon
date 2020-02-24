if(!destroyed)
{
	// bang bang
	//scr_towgre_attack_sequence();
	// select random coordinates in viewport

	if(abs(x-newX)<128 && abs(y-newY)<128)
	{
		location_reached = true;
	}
	
	if(location_reached)
	{		
		// stop moving
		speed = 0;
		
		// rotate to player
		direction = point_direction(x, y, obj_truck.x, obj_truck.y);

		// fire claw
		alarm[1] = room_speed/4;
	}
	else
	{
		// move to coordinates
		speed = 0.2*room_speed;
		
		// turn towards coordinates
		direction = point_direction(x, y, newX, newY);
	}

	// repeat
}