instance_create_layer(x + lengthdir_x(sprite_width/2, direction), y + lengthdir_y(sprite_height/2, direction), "Instances", obj_dragon_tank_missile)
alarm[2] = missileCooldown
audio_play_sound(snd_boss_fire_missile,30,false)