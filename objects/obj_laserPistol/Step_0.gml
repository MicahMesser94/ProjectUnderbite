/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y)

firingDelay = firingDelay - 1;
recoil = max(0, recoil - 1);


x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (mouse_check_button(mb_left)) && (firingDelay <0)
{
		
	if (global.ammo[global.gunState] > 0 && obj_player.isReloading = false)
	{
		sprite_index= spr_laserPistolCharging
		charge = min(charge + 1, chargeDur)
	}
}
if (mouse_check_button_released(mb_left))
{
	if (charge = chargeDur)
	{
		//fire
	}
	else
	{
		charge = 0;
		sprite_index = spr_laserPistol;
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