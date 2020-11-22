x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y)

firingDelay = firingDelay - 1;
recoil = max(0, recoil - 1);


x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_x(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
	if (mouse_check_button(mb_left)) && (firingDelay <0)
	{
		
<<<<<<< HEAD
<<<<<<< Updated upstream
		if obj_player.ammo > 0
		{
=======
		//if obj_player.ammo > 0
		//{
>>>>>>> 1179d14f8bc17da511d4be6104639ee7d2e9a090
			ScreenShake(1,60)
=======
		//if obj_player.ammo > 0
		//{
			scr_ScreenShake(1,60);
>>>>>>> Stashed changes
			audio_play_sound(snd_shotgun,5,false);		
			image_speed = 1;
			recoil = 4;
			firingDelay = 20;
			with (instance_create_layer(x,y,"bullet",obj_bullet))
			{
				speed = 5;
				direction = other.image_angle - 15;
				image_angle = direction;
				image_index = 1;
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle - 5;
				image_angle = direction;
				image_index = 0;
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5;
				direction = other.image_angle + 5
				image_angle = direction;
				image_index = 2;
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5;
				direction = other.image_angle + 10
				image_angle = direction;
				image_index = 3;
			}
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
		
<<<<<<< HEAD
<<<<<<< Updated upstream
		if obj_player.ammo > 0
		{
=======
		//if obj_player.ammo > 0
		//{
>>>>>>> 1179d14f8bc17da511d4be6104639ee7d2e9a090
			ScreenShake(2,30)
=======
		//if obj_player.ammo > 0
		//{
			scr_ScreenShake(2,30);
>>>>>>> Stashed changes
			audio_play_sound(snd_shotgun,5,false);
			audio_play_sound(snd_shotgun,5,false);
			image_speed = 1;
			recoil = 4;
			firingDelay = 20;
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
				direction = other.image_angle + 5;
				image_angle = direction;
				image_index = 1;
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle -5
				image_angle = direction;
				image_index = 2;
			}
			with (instance_create_layer(x ,y,"bullet",obj_bullet))
			{
				speed = 5
				direction = other.image_angle - 15
				image_angle = direction;
				image_index = 3
			}
			obj_player.ammo-- 
		//}
	}
}