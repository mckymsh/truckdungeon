window_set_cursor(cr_none);
cursor_sprite = spr_reticle;

other.have_minigun = true;
other.current_weapon = weapon.minigun;
with(other)
{
	scr_truck_weaponchange();
}

instance_destroy();