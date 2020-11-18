/// @description Insert description here
// You can write your code in this editor


audio_sound_pitch(snd_shotgun,0.6)
audio_play_sound(snd_shotgun,5,false);
		
			with (instance_create_layer(x,y,"bullet",obj_blast))
			{
				
				if sign(other.image_xscale) < 1 
				{
					direction = 0;
					image_xscale = -1
					x = other.x + 50
					y = other.y + 20
				}
				else 
				{
					direction = 180;
					image_xscale = 1;
					x = other.x - 50
					y = other.y + 20
				}
				
				image_index = 1
			}	
			

alarm_set(1, 150)

