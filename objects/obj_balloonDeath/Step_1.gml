/// @description Insert description here
// You can write your code in this editor

if sprite_index = spr_balloonDeath
{
	if scr_AnimationEnd()
	{
		image_speed = 0;
		instance_destroy()
	}
}
/*
} else if sprite_index = spr_bDeath
{
	if scr_AnimationEnd()
		{
			instance_destroy()
		}
}
if (place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	sprite_index = spr_bDeath
	image_speed = 1;
	
	
	
	
}
