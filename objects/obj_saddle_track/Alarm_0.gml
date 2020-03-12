/// @description Idle Walk
// You can write your code in this editor
if (state == Aggro.patrol) {
	audio_play_sound(snd_horse_walk,30,false)
//	pick a random direction, walk a step, then pause
	rand = irandom(3)
	image_angle = 90 * (rand)
	
	if (rand == 0) {
		
		hspeed = patrolSpeed
		vspeed = 0
	} else if (rand ==1) {
		hspeed = 0
		vspeed = -patrolSpeed
	} else if (rand == 2) {
		hspeed = -patrolSpeed
		vspeed = 0
	} else {
		hspeed = 0
		vspeed = patrolSpeed
	}
	alarm[1] = 10
}