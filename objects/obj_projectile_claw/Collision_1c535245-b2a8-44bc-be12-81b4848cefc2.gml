speed = 0;
stuck = true;
//audio_play_sound(snd_horse_charge,30,false)
dist = point_distance(x, y, obj_truck.x, obj_truck.y);
angleDiff = angle_difference(image_angle, obj_truck.image_angle);

if(alarm[0] < 0)
{
	alarm[0] = stick_time_ratio*room_speed;
}

obj_truck.stuck = true;