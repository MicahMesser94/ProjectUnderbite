x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y)

firingDelay = firingDelay - 1;
recoil = max(0, recoil - 1);


x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (mouse_check_button(mb_left)) && (firingDelay <0)
{
		
	if (global.ammo[global.gunState] > 0)
	{
		scr_ScreenShake(1,60)
		audio_play_sound(snd_shotgun,5,false);		
		image_speed = 1
		recoil = 4;
		firingDelay = 20
		for (i = 0; i < 4; i++)
		{
			scr_SpreadShot(i)
		}
		global.ammo[global.gunState]--
		
	}
		
}

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}