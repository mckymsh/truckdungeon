if (room == rm_title){
	room = rm_dungeon;
} else if (room == rm_victory){
	room = rm_dungeon;
	score = 0;
	with(obj_truck)
	{
		hp = default_hp;	
		dying = false;
		dead = false;
		x = 2500;
		y = 2688;
		stuck = false;
		// instance_create_depth(x, y, depth-1, obj_weapon_mainguns);
	}
	with(obj_controller){
		instance_destroy();	
	}
} else if (room == rm_death){
	room = rm_dungeon;
	score = 0;
	with(obj_truck)
	{
		hp = default_hp;	
		dying = false;
		dead = false;
		x = 2500;
		y = 2688;
		stuck = false;
		// instance_create_depth(x, y, depth-1, obj_weapon_mainguns);
	}
	with(obj_controller){
		instance_destroy();	
	}
}
audio_stop_sound(snd_music_title_theme)
audio_play_sound(snd_music_game_theme,10,true)