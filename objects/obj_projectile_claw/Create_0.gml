target_x = obj_truck.x; 
target_y = obj_truck.y;
direction = point_direction(x, y, target_x, target_y);
image_angle = direction;

source_towgre = instance_nearest(x, y, obj_enemy_towgre);