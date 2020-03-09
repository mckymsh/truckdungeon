window_set_cursor(cr_none);

randomize();

cursor_sprite = spr_reticle;

// truck = instance_create_layer(room_width/2, room_height/2, "Instances", obj_truck);
truck = instance_create_layer(2560, 2688, "Instances", obj_truck);

truck.direction = 90;

if (room == rm_test2){
	scr_create_grid();
	alarm[0] = gameTimer*room_speed;
}