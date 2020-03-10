if (alarm[6] < 0){
	obj_truck.hp -= collision_damage;
	alarm[6] = 3;
}

if (state == Aggro.charge){
	state = Aggro.dizzy
	alarm[4] = stunDuration
	alarm[5] = -1
	vspeed = -bounce_ratio*vspeed
	hspeed = -bounce_ratio*hspeed
	sprite_index = spr_saddle_track_dizzy
	image_speed = .4
} 

show_debug_message("Saddletrack has hit the Truck");