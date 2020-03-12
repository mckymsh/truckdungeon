scr_collision_bounce();
audio_play_sound(snd_truck_collision,30,false)
//if (alarm[7] < 0){
//	show_debug_message(other.x)
//	show_debug_message(other.y)
//	var xDif = other.x - x;
//	var yDif = other.y - y;
//	if (abs(xDif) < abs(yDif)){
//		if (sign(xDif) == 1){
//			if (direction > 90 && direction < 270){
//				speed = (10+speed);
//			} else {
//				speed = (-10-speed);
//			}
//		} else {
//			if (direction > 90 && direction < 270){
//				speed = (-10-speed);
//			} else {
//				speed = (10+speed);
//			}
//		}
//	} else {
//		if (sign(yDif) == 1){
//			if (direction < 180){
//				speed = (10+speed);
//			} else {
//				speed = (-10-speed);
//			}
//		} else {
//			if (direction > 90 && direction < 270){
//				speed = (-10-speed);
//			} else {
//				speed = (10+speed);
//			}
//		}
//	}
//	temp = speed;
//	alarm[7] = 3;
//} else if (alarm[7] < 3){
//	speed = temp;
//	//show_debug_message(speed);
//}
