if(instance_exists(obj_projectile_claw))
{
	if(current_claw != undefined)
	{
		instance_destroy(current_claw);
	}
}

var debris = instance_create_depth(x, y, depth, obj_towgre_destroyed);
debris.image_angle = image_angle;