
///@arg damage 
function PlayerHit()
{
	
		var damage = argument[0]
		//if obj_player
		alarm_set(1,20)
		audio_sound_pitch(snd_hit, choose(1.0,1.1,1.2))
		audio_play_sound(snd_hit, 10, false);
		hp -= damage;
		isHit = true;
		hascontrol = false;
		iFrames = 70
		flash = 3;
		if other.x > x
		{
			hsp = -3;
			vsp = -5;
		}
		else if other.x < x
		{
			hsp = 3
			vsp = -5
		}
		instance_create_layer(x,y,"gun",obj_blood)

}