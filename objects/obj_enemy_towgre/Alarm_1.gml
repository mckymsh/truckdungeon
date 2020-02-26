claw_out = true;
current_claw = instance_create_depth(x, y, depth-1, obj_projectile_claw);
current_claw.direction = direction;

coordinate_selected = false;
location_reached = false;