//scr_collision_bounce();

if(instance_exists(obj_projectile_claw))
{
	if(current_claw != undefined)
	{
		instance_destroy(current_claw);
	}
}

alarm[0] = room_speed;

if (alarm[5] < 0){
	obj_truck.hp -= collision_damage;
	alarm[5] = 3;
}