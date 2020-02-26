acceleration_ratio = 0.005;
max_forward_speed_ratio = 0.1;
var towgre = other.source_towgre;
motion_add(point_direction(x, y, towgre.x, towgre.y), 0.5*room_speed);