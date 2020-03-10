direction = image_angle;

speed = clamp(speed, max_reverse_speed_ratio*room_speed, max_forward_speed_ratio*room_speed);
x = clamp(x, 0+sprite_xoffset, room_width-sprite_xoffset);
y = clamp(y, 0+sprite_yoffset, room_height-sprite_yoffset);

// So the idle animation doesn't play while moving
if(abs(speed) >= 1)
{
	image_speed = 0;
}
else
{
	image_speed = 1;
}

if(!dead)
{
	if(hp <= 0)
	{
		show_debug_message("Uh oh we dead");
		dead = true;
	}
}
else
{
	instance_destroy(obj_projectile_claw, false);
	instance_destroy(obj_enemy_towgre, false);
	instance_destroy(obj_saddle_track, false);
	room_goto(rm_title);
	alarm[11] = 5*room_speed;
}