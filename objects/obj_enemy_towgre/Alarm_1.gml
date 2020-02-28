if(!claw_out)
{
	claw_out = true;
	current_claw = instance_create_depth(x, y, depth-1, obj_projectile_claw);
}

if(claw_out && !instance_exists(current_claw))
{
	alarm[0] = fire_frequency_ratio*room_speed;
	claw_out = false;
}