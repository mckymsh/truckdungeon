cursor_sprite = spr_reticle;
audio_play_sound(snd_power_up,30,false)
other.have_minigun = true;
other.current_weapon = weapon.minigun;
with(other)
{
	scr_truck_weaponchange();
}

instance_destroy();