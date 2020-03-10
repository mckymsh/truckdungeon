if (alarm[4] < 0){
	var bounce_ratio = 2.0;
	speed = (-speed - sign(speed)) * bounce_ratio;
	temp = speed;
	alarm[4] = 3;
} else if (alarm[4] < 3){
	speed = temp;
}