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

if(!dying)
{
	if(hp <= 0)
	{
		show_debug_message("Uh oh we dead");
		dying = true;
		
		instance_destroy(obj_projectile_claw, false);
		instance_destroy(obj_enemy_towgre, false);
		instance_destroy(obj_saddle_track, false);
				audio_stop_sound(snd_music_game_theme);
				audio_stop_sound(snd_music_bossfight);
		audio_play_sound(snd_music_death_theme,30,false);
		room_goto(rm_death);

	}
}
else if(!dead)
{
	dead = true;
}