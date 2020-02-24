image_angle = direction;

if(hp < 1)
{
	destroyed = true;
	instance_destroy();
}

if(claw_out)
{
	draw_set_colour(c_black);
	draw_line_width(x, y, current_claw.x, current_claw.y, 6);
}