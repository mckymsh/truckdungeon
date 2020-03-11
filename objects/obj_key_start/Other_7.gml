if (room == rm_title){
	room = rm_dungeon;
} else if (room == rm_victory){
	room = rm_dungeon;
	obj_truck.hp = obj_truck.default_hp;
	with(obj_controller){
		instance_destroy();	
	}
} else if (room == rm_death){
	room = rm_dungeon;
	obj_truck.hp = obj_truck.default_hp;
	score = 0;
	obj_truck.dying = false;
	obj_truck.dead = false;
	obj_truck.x = 2500;
	obj_truck.y = 2688;
	obj_truck.stuck = false;
	instance_create_depth(obj_truck.x, obj_truck.y, obj_truck.depth-1, obj_weapon_mainguns);
	with(obj_controller){
		instance_destroy();	
	}
}