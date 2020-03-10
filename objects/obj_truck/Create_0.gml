depth = -1;

enum weapon
{
	none,
	minigun,
	rocketlauncher
}

instance_create_depth(x, y, depth+1, obj_truck_wheels);
instance_create_depth(x, y, depth-1, obj_weapon_mainguns);

current_weapon = weapon.none;