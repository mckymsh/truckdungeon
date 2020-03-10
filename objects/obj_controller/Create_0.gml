randomize();

// truck = instance_create_layer(room_width/2, room_height/2, "Instances", obj_truck);
if room != rm_boss {
	truck = instance_create_layer(2560, 2688, "Instances", obj_truck);}
else {
	obj_truck.x = room_width/2
	obj_truck.y = room_height/2 + 40
}
obj_truck.image_angle = 90;

if (room == main_dungeon){
	scr_create_grid();
	alarm[0] = gameTimer*room_speed;
}