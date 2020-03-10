if(!destroyed)
{
	// bang bang
	//scr_towgre_attack_sequence();
	// select random coordinates in viewport

	if(abs(x-newX)<128 && abs(y-newY)<128)
	{
		// So it doesn't run this all the time
		location_reached = true;		
	}
	
	if(location_reached)
	{		
		// stop moving
		speed = 0;
		sprite_index = spr_dragon_tank
		
		// rotate to player
		direction = point_direction(x, y, obj_truck.x, obj_truck.y);

		// fire claw
		if(alarm[1] < 0)
		{
			alarm[1] = initial_fire_delay_ratio*room_speed;
		}
	}
	else
	{
		// move to coordinates
		speed += acceleration_ratio*room_speed;
		sprite_index = spr_dragon_tank_move
		
		// turn towards coordinates
		direction = point_direction(x, y, newX, newY);
	}

	// repeat
}