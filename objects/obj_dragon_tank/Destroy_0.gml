room = rm_victory
//instance_destroy(obj_truck)
audio_play_sound(snd_boss_die,30,false)
audio_stop_sound(snd_music_bossfight)
audio_play_sound(snd_music_victory_theme,30,false)
score += pointValue;