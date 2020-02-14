// select random coordinates in viewport

var newX = 0;
var newY = 0;
var sides = choose(true, false);
if(sides)
{
	newX = choose
		(
			view_get_xport(0)+sprite_width/2,
			view_get_xport(0)+view_wport[0]-sprite_width/2
		);
	newY = irandom_range
		(
			view_get_yport(0)+sprite_height/2,
			view_get_yport(0)+view_hport[0]-sprite_height/2
		);
}
if(!sides)
{
	newX = irandom_range
		(
			view_get_xport(0)+sprite_width/2,
			view_get_xport(0)+view_wport[0]-sprite_width/2
		);
	newY = choose
		(
			view_get_yport(0)+sprite_height/2,
			view_get_yport(0)+view_hport[0]-sprite_height/2
		);
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
	// rotate to player
	direction = point_direction(x, y, obj_truck.x, obj_truck.y);

	// fire claw
	

	// pull claw
}

// repeat