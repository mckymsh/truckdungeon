if(keyboard_check(vk_control))
{
	if(keyboard_check(vk_backspace))
	{
		game_restart();
	}

	if(keyboard_check(ord("B")))
	{
		// goto boss room
	}
	
	if(keyboard_check(ord("T")))
	{
		// goto test room
	}
	
	if(keyboard_check(ord("W")))
	{
		obj_truck.have_minigun = true;
		obj_truck.have_rocketlauncher = true;
		obj_truck.current_weapon = weapon.minigun;
		with(obj_truck)
		{
			scr_truck_weaponchange();
		}
	}
}