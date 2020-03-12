direction = obj_dragon_tank.direction + random_range(-10, 10)
speed = random_range(5, 10)
alarm[0] = random_range(200, 250)
audio_play_sound(snd_truck_move_continue,30,false)