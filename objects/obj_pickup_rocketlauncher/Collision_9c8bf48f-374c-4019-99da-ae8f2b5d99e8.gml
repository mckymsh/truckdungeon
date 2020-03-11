cursor_sprite = spr_reticle;

other.have_rocketlauncher = true;
other.current_weapon = weapon.rocketlauncher;
with(other)
{
	scr_truck_weaponchange();
}

instance_destroy();