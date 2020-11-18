// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Death(){
	if (animation_end()) image_speed = 0

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
			
			alarm[0] = 60;
			
		}
		while(!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y = y + sign(vsp);
		}
	
	
		vsp = 0;
	
	
	
	
	}

	y = y + vsp

}