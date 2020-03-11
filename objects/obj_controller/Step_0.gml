//basic user inputs
if (keyboard_check(ord("R")))
{
	game_restart()
}

if (keyboard_check(vk_escape)) {
	game_end()
}

//Cheat Commands
if(keyboard_check(vk_control))
{

	if(keyboard_check(ord("B")))
	{
		room_goto(rm_boss);
	}
	
	if(keyboard_check(ord("T")))
	{
		room_goto(rm_test);
	}
	
	if(keyboard_check(ord("G")))
	{
		cursor_sprite = spr_reticle;
		obj_truck.have_minigun = true;
		obj_truck.have_rocketlauncher = true;
		obj_truck.current_weapon = weapon.minigun;
		with(obj_truck)
		{
			scr_truck_weaponchange();
		}
	}
	
	if(keyboard_check(ord("H")))
	{
		obj_truck.hp = 100000;
	}
}

if((room == rm_title) || (room == rm_death) || (room == rm_victory))
{
	window_set_cursor(cr_default);
}
else
{
	window_set_cursor(cr_none);
}