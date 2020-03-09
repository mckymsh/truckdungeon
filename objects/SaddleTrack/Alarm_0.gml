/// @description Insert description here
// You can write your code in this editor
if (state == Aggro.patrol) {
//	pick a random direction, walk a step, then pause
	rand = irandom(3)
	direction = 90 * (rand + 1)
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