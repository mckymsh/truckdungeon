/// @description Insert description here
// You can write your code in this editor

/*
hcollid = collision_line(0,y,room_width,y,obj_truck,false, true)
vcollid = collision_line(x,0,x,room_height, obj_truck,false,true)
if (hcollid != noone) {
//hspeed = sprintSpeed * sign(x - obj_truck.x)
hspeed = 4
vspeed = 0
}

if (vcollid != noone) {
//vspeed = sprintSpeed * sign(y - obj_truck.y)
vspeed = 4
hspeed = 0
}
*/
//vspeed = 0
//hspeed = 

/*
if (abs(obj_truck.x - x) < sprite_width) {
vspeed = sprintSpeed * sign(obj_truck.y- y)
clamp(vspeed, -4,4)
hspeed = 0
}  else if (abs(obj_truck.y - y) < sprite_height) {
hspeed = sprintSpeed * sign(obj_truck.x - x)
clamp(hspeed,-4, 4)
vspeed = 0
} else {
	hspeed = 0
	vspeed = 0
}
*/
if (state == Aggro.patrol){
	//checking if the truck crosses the sprite's x or y axis
	horizontalMatch = (abs(y - obj_truck.y) < sprite_height/2)
	verticalMatch = (abs(x - obj_truck.x) < sprite_width/2)
	if (horizontalMatch || verticalMatch) {
		state = Aggro.startup
		alarm[0] = -1
		alarm[1] = -1
		//alarm for charging end
		alarm[2] = 60
		vspeed = 0
		hspeed = 0
		canKickDust = true
		image_speed = 4
		//makes the enemy point it's sprite in the direction it's charging
		if (abs(obj_truck.x - x) < abs(obj_truck.y - y)) {
			if (sign(obj_truck.y - y) == 1) {
				image_angle = 270
			} else {
				image_angle = 90	
			}
		} else {
			if (sign(obj_truck.x - x) == 1) {
				image_angle = 0	
			} else {
				image_angle = 180	
			}
		}
	}
}
else if (state == Aggro.startup) {
	if (canKickDust == true){
		audio_play_sound(snd_horse_charge,30,false)
		canKickDust = false
		alarm[3] = 5
		instance_create_layer(x,y,"Instances",obj_dust)
	}
	
} else if (state == Aggro.charge && canStartCharge = true) {
	if (abs(obj_truck.x - x) < abs(obj_truck.y - y)) {
		hspeed = 0
		vspeed = sprintSpeed * sign(obj_truck.y - y)
		if (sign(obj_truck.y - y) == 1) {
				image_angle = 270
			} else {
				image_angle = 90	
			}
	} else {
		vspeed = 0
		hspeed = sprintSpeed * sign(obj_truck.x - x)
		if (sign(obj_truck.x - x) == 1) {
				image_angle = 0	
			} else {
				image_angle = 180	
			}
	}
	alarm[5] = 60
	canStartCharge = false
	audio_play_sound(snd_horse_running,30,false)
//slows down backup speed a bit every frame, so eventually
//it backs up at a speed of 1
} else if (state == Aggro.dizzy) {
	if (vspeed > backingUpSpeed) {
		vspeed -= 1	
	} else if (vspeed < -backingUpSpeed) {
		vspeed += 1
	}
	if (hspeed > backingUpSpeed) {
		hspeed -= 1	
	} else if (hspeed < -backingUpSpeed) {
		hspeed += 1
	}
}