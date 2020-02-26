if(!coordinate_selected)
{
	// This hackish crap should choose the closest corner.
	
	// Find distances to corners
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
	
	// Pick closest one, assign coordinates
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
	// This chooses a random corner
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
	
	// So it doesn't run this code all the time, slowing things down
	coordinate_selected = true;
}