x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y)

firingDelay = firingDelay - 1;
recoil = max(0, recoil - 1);


x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
	if (mouse_check_button(mb_left)) && (firingDelay <0)
	{
		
		//if obj_player.ammo > 0
		//{
			ScreenShake(1,60)
			audio_play_sound(snd_shotgun,5,false);		
			image_speed = 1
			recoil = 4;
			firingDelay = 20
			for (i = 0; i < 4; i++)
			{
				scr_SpreadShot(i)
			}
			/*
			with (instance_create_layer(x,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle - 15
				image_angle = direction;
				image_index = 0
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle -5
				image_angle = direction;
				image_index = 1
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle + 5
				image_angle = direction;
				image_index = 2
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle + 15
				image_angle = direction;
				image_index = 3
			}
			*/
			//x = x + lengthdir_x(30, image_angle)
			obj_player.ammo-- 
		//}
		
	}
}
else
{
	image_yscale = 1;
	if (mouse_check_button(mb_left)) && (firingDelay <0)
	{
		
		//if obj_player.ammo > 0
		//{
			ScreenShake(2,30)
			audio_play_sound(snd_shotgun,5,false);
			audio_play_sound(snd_shotgun,5,false);
			image_speed = 1;
			recoil = 4;
			firingDelay = 20;
			for (i = 0; i < 4; i++)
			{
				scr_SpreadShot(i)
			}
			/*
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle + 15
				image_angle = direction;
				//x = x + lengthdir_x(15, image_angle)
				//y = y + lengthdir_y(15, image_angle)
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle + 5
				image_angle = direction;
				image_index = 1
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle -5
				image_angle = direction;
				image_index = 2
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle - 15
				image_angle = direction;
				image_index = 3
			}
			*/
			obj_player.ammo-- 
		//}
	}
}