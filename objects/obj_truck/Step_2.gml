direction = image_angle;

speed = clamp(speed, -room_speed/5, room_speed/5);

move_wrap(true, true, sprite_width/2);