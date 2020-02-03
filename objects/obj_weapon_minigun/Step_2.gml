if(overheated)
{
	sprite_index = spr_weapon_minigun_overheat;
}

x = obj_truck.x + lengthdir_x(dist, angleDiff + obj_truck.image_angle);
y = obj_truck.y + lengthdir_y(dist, angleDiff + obj_truck.image_angle);

flash.x = x+lengthdir_x(36,image_angle); 
flash.y = y+lengthdir_y(36,image_angle);
flash.image_angle = image_angle;