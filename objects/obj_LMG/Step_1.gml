x = obj_player.x;
y = obj_player.y+5;

image_angle = point_direction(x, y, mouse_x, mouse_y)

firingDelay = firingDelay - 1;
recoil = max(0, recoil - 1);
if (mouse_check_button_pressed(mb_left))
{
	//firecount++
	lastShot = false;
	//audio_play_sound(snd_shit,5,false);
}



x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_x(recoil, image_angle);

if ((mouse_check_button(mb_left)) && (firingDelay <0))
	{
		
		
		firecount++
		if firecount > 5
		{
			//audio_stop_sound(snd_shit)
		}
		if (!audio_is_playing(snd_shit) && !audio_is_playing(snd_iii))
		{
			//audio_play_sound(snd_iii,5,true)
		}
		audio_play_sound(snd_lmg,6,false)
		image_speed = 1
		recoil = 4;
		firingDelay = 4;
		
		with (instance_create_layer(x,y,"bullet",obj_LMGbullet))
		{
			//audio_play_sound(snd_iii,4,false)
			if other.firecount = 1
			{
				image_index = 0;
			}
			else if other.firecount = 2
			{
				image_index = 1;
			}
			else if other.firecount >= 3
			{
				image_index = 2
			}
			speed = 5
			direction = other.image_angle + random_range(-1,1);
			image_angle = direction;
			if other.lastShot = true image_index = 3
			
		}
		
	}
if (mouse_check_button_released(mb_left))
{
	lastShot = true;
	with (instance_create_layer(x,y,"bullet",obj_LMGbullet))
		{
			speed = 5
			direction = other.image_angle //+ random_range(-1,1);
			image_angle = direction;
			if other.lastShot = true image_index = 3
			
		}
	lastShot = true;
	firecount = 0;/*
	if(!audio_is_playing(snd_shit))
	{
		audio_play_sound(snd_t,5,false);
	}
	audio_stop_sound(snd_iii)*/
	
}

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
	
}
else
{
	image_yscale = 1;
}


