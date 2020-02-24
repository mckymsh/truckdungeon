depth = 0;

enum weapon
{
	none,
	minigun,
	rocketlauncher
}

instance_create_depth(x, y, depth+1, obj_truck_wheels);
instance_create_depth(x, y, depth-1, obj_weapon_mainguns);

current_weapon = weapon.minigun;
instance_create_depth
(
	x + lengthdir_x(20, image_angle-180),
	y + lengthdir_y(20, image_angle-180),
	depth-2,
	obj_weapon_minigun
);

