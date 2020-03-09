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
	//checking if the truck crosses the sprite's x axis
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
	}
}
else if (state == Aggro.startup) {
	instance_create_layer(x,y,"Instances",obj_smoke )
	
	
} else if (state == Aggro.charge) {
	
} else if (state == Aggro.dizzy)