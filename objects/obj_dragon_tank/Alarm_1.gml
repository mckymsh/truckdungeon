instance_create_layer(x + lengthdir_x(sprite_width/2, direction), y + lengthdir_y(sprite_height/2, direction), "Instances", obj_fireball)
counter -= 1
if counter > 1 {
	alarm[1] = 1
}
