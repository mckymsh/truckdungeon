if(instance_exists(obj_projectile_claw))
{
	if(current_claw != undefined)
	{
		instance_destroy(current_claw);
	}
}

alarm[0] = room_speed;

obj_truck.hp -= collision_damage;