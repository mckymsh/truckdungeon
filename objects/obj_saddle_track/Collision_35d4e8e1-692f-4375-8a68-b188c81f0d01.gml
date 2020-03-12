hp -= other.damage;
audio_play_sound(snd_horse_hurt,30,false)
with(other)
{
	instance_destroy();
}