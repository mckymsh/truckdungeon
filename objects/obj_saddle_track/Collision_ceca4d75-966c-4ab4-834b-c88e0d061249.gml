/// @description Back up and Be Dizzy
// You can write your code in this editor
if (state == Aggro.charge){
	state = Aggro.dizzy
	alarm[4] = stunDuration
	alarm[5] = -1
	vspeed = -vspeed
	hspeed = -hspeed
	sprite_index = spr_saddle_track_dizzy
	image_speed = .4
} 