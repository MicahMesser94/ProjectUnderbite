if (place_meeting(x,y-1,obj_player))
{
	audio_play_sound(snd_jumpPad,5,false)
	with(obj_player)
	{
		vsp = -14
	}
}