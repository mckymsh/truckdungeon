path_start(pth_dragon_tank, 4, path_action_restart, false)

alarm[0] = fireballCooldown + random_range(-50, 50)

alarm[2] = missileCooldown
				audio_stop_sound(snd_music_game_theme)
		audio_play_sound(snd_music_bossfight,40,false)