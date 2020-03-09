/// @description set dust lifespan
// You can write your code in this editor
alarm[0] = 10
hspeed = irandom_range(-2,2)
var bestDistance = 100
creator = 0
with obj_saddle_track { 
	var thisDistance = point_distance(x,y,other.x,other.y)
	if (thisDistance < bestDistance) {
		bestDistance = thisDistance
		other.creator = id
	}
}

if (creator.image_angle == 0) {
	hspeed = irandom_range(-6,-3)
	vspeed = irandom_range(-2,2)
} else if (creator.image_angle == 90) {
	hspeed = irandom_range(-2,2)
	vspeed = irandom_range(3,6)
}else if (creator.image_angle == 180) {
	hspeed = irandom_range(3,6)
	vspeed = irandom_range(-2,2)
}else if (creator.image_angle == 270) {
	hspeed = irandom_range(-2,2)
	vspeed = irandom_range(-3,-6)
}