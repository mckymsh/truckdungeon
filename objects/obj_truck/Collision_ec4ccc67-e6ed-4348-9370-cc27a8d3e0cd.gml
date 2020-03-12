if (alarm[6] < 0){
	horizontalMatch = (abs(other.y - y) < sprite_height/2)
	verticalMatch = (abs(other.x - x) < sprite_width/2)
	if (horizontalMatch){
		if (other.x > x){
			if (direction > 90 && direction < 270){
				speed = (other.speed-speed - sign(speed));
			} else {
				speed = (-other.speed-speed - sign(speed));
			}
		} else {
			if (direction > 90 && direction < 270){
				speed = (-other.speed-speed - sign(speed));
			} else {
				speed = (other.speed-speed - sign(speed));
			}
		}
	} else {
		if (other.y > y){
			if (direction < 180){
				speed = (-other.speed-speed - sign(speed));
			} else {
				speed = (other.speed-speed - sign(speed));
			}
		} else {
			if (direction < 180){
				speed = (other.speed-speed - sign(speed));
			} else {
				speed = (-other.speed-speed - sign(speed));
			}
		}
	}
	temp = speed;
	alarm[6] = 3;
} else if (alarm[6] < 3){
	speed = temp;
	//show_debug_message(speed);
}
audio_play_sound(snd_truck_collision,30,false)