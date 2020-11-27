/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_enemy_boss) < 5 && obj_enemy_boss.stunned > 0 || distance_to_object(obj_enemy_boss) < 5 && place_meeting(x,y,obj_star) || place_meeting(x,y,obj_blast))
{
	var dir = -sign(obj_enemy_boss.x - x)
	image_xscale = dir;
	image_speed = 1
}


if scr_AnimationEnd() instance_destroy()