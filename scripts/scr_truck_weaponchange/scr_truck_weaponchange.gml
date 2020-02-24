switch(current_weapon)
{
	case weapon.none:
		instance_destroy(obj_weapon_minigun, false);
		instance_destroy(obj_weapon_rocketlauncher, false);
		break;
		
	case weapon.minigun:
		instance_destroy(obj_weapon_rocketlauncher, false);
		instance_create_depth
		(
			x + lengthdir_x(20, image_angle-180),
			y + lengthdir_y(20, image_angle-180),
			depth-2,
			obj_weapon_minigun
		);
		break;
		
	case weapon.rocketlauncher:
		instance_destroy(obj_weapon_minigun, false);
		instance_create_depth
		(
			x + lengthdir_x(20, image_angle-180),
			y + lengthdir_y(20, image_angle-180),
			depth-2,
			obj_weapon_rocketlauncher
		);
		break;	
}