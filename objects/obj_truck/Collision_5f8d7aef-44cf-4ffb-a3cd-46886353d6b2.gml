if (alarm[5] < 0){
	var bounce_ratio = 2.0;
	speed = (-speed - sign(speed)) * bounce_ratio;
	temp = speed;
	alarm[5] = 3;
} else if (alarm[5] < 3){
	speed = temp;
}
audio_play_sound(snd_truck_collision,30,false)