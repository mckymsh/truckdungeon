window_set_cursor(cr_none);

cursor_sprite = spr_reticle;

truck = instance_create_layer(room_width/2, room_height/2, "Instances", obj_truck);
truck.direction = 90;