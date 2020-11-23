/// @description Insert description here
// You can write your code in this editor
x = owner.x;
y = owner.y + 25;
recoil = max(0, recoil - 1);
image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(obj_player))
{
	if (obj_player.x < x) image_yscale = -image_yscale;
	if (point_distance(obj_player.x,obj_player.y,x,y) < 600 && owner.state = BALLOONSTATEGUN.CHASE)
	{
		image_angle = point_direction(x,y, obj_player.x, obj_player.y)
		countdown--;
		if (countdown <= 0)
		{
			countdown = countdownRate;
			audio_sound_pitch(snd_shotgun,0.6)
			audio_play_sound(snd_shotgun,5,false);
			image_speed = 1
			recoil = 8;
			with (instance_create_layer(x,y,"bullet",obj_bulletEnemy))
			{
				speed = 3
				direction = other.image_angle
				image_angle = direction;
				image_index = 1
			}		
				
		}

	}
	
	
}