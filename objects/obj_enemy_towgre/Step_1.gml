if(!coordinate_selected)
{
	/*
	var sides = choose(true, false);
	if(sides)
	{
		newX = choose
		(
			obj_truck.x - camera_get_view_width(0)/2 + sprite_width/2,
			obj_truck.x + camera_get_view_width(0)/2 - sprite_width/2
			// camera_get_view_x(0)+sprite_width/2,
			// camera_get_view_x(0)+camera_get_view_width(0)-sprite_width/2
		);
		newY = irandom_range
		(
			obj_truck.y - camera_get_view_height(0)/2 + sprite_height/2,
			obj_truck.y + camera_get_view_height(0)/2 - sprite_height/2
			// camera_get_view_y(0)+sprite_height/2,
			// camera_get_view_y(0)+camera_get_view_height(0)-sprite_height/2
		);
	}
	if(!sides)
	{
		newX = irandom_range
		(
			obj_truck.x - camera_get_view_width(0)/2 + sprite_width,
			obj_truck.x + camera_get_view_width(0)/2 - sprite_width
			// camera_get_view_x(0)+sprite_width/2,
			// camera_get_view_x(0)+camera_get_view_width(0)-sprite_width/2
		);
		newY = choose
		(
			obj_truck.y - camera_get_view_height(0)/2 + sprite_height/2,
			obj_truck.y + camera_get_view_height(0)/2 - sprite_height/2
			// camera_get_view_y(0)+sprite_height/2,
			// camera_get_view_y(0)+camera_get_view_height(0)-sprite_height/2
		);
	}
	*/
	
	// This hackish crap should choose the closest corner.
	
	var TLD = point_distance
	(
		x, y, 
		obj_truck.x - camera_get_view_width(0)/2 + sprite_width*2,
		obj_truck.y - camera_get_view_height(0)/2 + sprite_height*2
	);	
	var TRD = point_distance
	(
		x, y,
		obj_truck.x + camera_get_view_width(0)/2 - sprite_width*2,
		obj_truck.y - camera_get_view_height(0)/2 + sprite_height*2
	);
	var BLD = point_distance
	(
		x, y,
		obj_truck.x - camera_get_view_width(0)/2 + sprite_width*2,
		obj_truck.y + camera_get_view_height(0)/2 - sprite_height*2
	);
	var BRD = point_distance
	(
		x, y,
		obj_truck.x + camera_get_view_width(0)/2 - sprite_width*2,
		obj_truck.y + camera_get_view_height(0)/2 - sprite_height*2
	);
	
	if(min(TRD, BLD, BRD) > TLD)
	{
		newX = obj_truck.x + camera_get_view_width(0)/2 - sprite_width*2;
		newY = obj_truck.x - camera_get_view_width(0)/2 + sprite_width*2;
	}
	else if(min(TLD, BLD, BRD) > TRD)
	{
		newX = obj_truck.x + camera_get_view_width(0)/2 - sprite_width*2;
		newY = obj_truck.y - camera_get_view_height(0)/2 + sprite_height*2;
	}
	else if(min(TLD, TRD, BRD) > BLD)
	{
		newX = obj_truck.x - camera_get_view_width(0)/2 + sprite_width*2;
		newY = obj_truck.y + camera_get_view_height(0)/2 - sprite_height*2;
	}
	else
	{
		newX = obj_truck.x + camera_get_view_width(0)/2 - sprite_width*2;
		newY = obj_truck.y + camera_get_view_height(0)/2 - sprite_height*2;
	}
	
	
	/*
	newX = choose
	(
		obj_truck.x - camera_get_view_width(0)/2 + sprite_width,
		obj_truck.x + camera_get_view_width(0)/2 - sprite_width
	);
	newY = choose
	(
		obj_truck.y - camera_get_view_height(0)/2 + sprite_height/2,
		obj_truck.y + camera_get_view_height(0)/2 - sprite_height/2
	);
	*/
	
	coordinate_selected = true;
}