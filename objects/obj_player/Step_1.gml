/// @description Insert description here
// You can write your code in this editor

if hp <= 0
{
	with(global.gunState)
	{
		instance_destroy();
		audio_stop_all();
	}
	instance_change(obj_playerDead,true)
	if (sign(hsp) != 0) 
	{
		image_xscale = sign(hsp);
	}
	if instance_exists(obj_hat)
	{
		with(obj_hat) instance_destroy()
	}
}
