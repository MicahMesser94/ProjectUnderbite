/// @description Insert description here
// You can write your code in this editor

if (animation_end()) 
{
	alarm[0] = 100;
	image_speed = 0
}
if (done == 0)
{
vsp = vsp + grv;


	//Horizontal Collision
	if (place_meeting(x+hsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	
	}

	x = x + hsp

	//Vertical Collision
	if (place_meeting(x,y+1,obj_wall))
	{
		if (vsp > 0)
		{
			done = 1;
			
			
		}
		while(!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y = y + sign(vsp);
		}
	
	
		vsp = 0;
	
	
	
	
	}

	y = y + vsp

}