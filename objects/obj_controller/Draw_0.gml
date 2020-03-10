draw_set_colour(c_white);
if (room == main_dungeon){
	draw_text(
		5+camera_get_view_x(view_camera[0]),
		45+camera_get_view_y(view_camera[0]), 
		"Time: " + string(alarm[0]/60)
	);
	
	draw_text(
		5+camera_get_view_x(view_camera[0]),
		5+camera_get_view_y(view_camera[0]), 
		"Hp: " + string(obj_truck.hp)
	);
	
	draw_text(
		5+camera_get_view_x(view_camera[0]),
		25+camera_get_view_y(view_camera[0]), 
		"Score: " + string(score)
	);
}
if (room == boss_room){
	draw_text(
		5+camera_get_view_x(view_camera[0]),
		5+camera_get_view_y(view_camera[0]), 
		"Hp: " + string(obj_truck.hp)
	);
	draw_text(
		5+camera_get_view_x(view_camera[0]),
		25+camera_get_view_y(view_camera[0]), 
		"Score: " + string(score)
	);
	draw_text(
		5+camera_get_view_x(view_camera[0]),
		45+camera_get_view_y(view_camera[0]), 
		"Dragon Tank Hp: " + string(obj_dragon_tank.hp)
	);
}
