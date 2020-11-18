
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

x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	
	
}
/*
if (place_meeting(x,y-10,obj_player))
{
	hp -= 1
	flash = 3;
	obj_player.vsp -= 4
	obj_player.hsp -= 4
	
	
}
*/
y = y + vsp


//Animation
 
/*if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_enemy;
	image_speed = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_enemyW
	}
	else
	{
		sprite_index = spr_enemyW
		
	}
}
*/
//if (hsp != 0) image_xscale = sign(hsp) * size ;
image_xscale = size;
image_yscale = size;


