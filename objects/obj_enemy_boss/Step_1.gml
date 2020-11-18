/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if (hp <= 0)
{
	with(instance_create_layer(x,y,"Enemy",obj_eDeath))
	{
		image_xscale = other.size
		image_yscale = other.size
	}	
	
	instance_destroy()

}

if sprite_index = spr_bossJump 
{
	
	hsp = dir * 3
	if place_meeting(x,y+vsp, obj_wall)
	{
		with (instance_create_layer(x,y,"bullet",obj_star))
			{
				speed = 5
				direction = 0
			}	
		with (instance_create_layer(x,y,"bullet",obj_star))
			{
				speed = 5
				direction = 180
			}
	isAttacking = false;
	state = e_stateBoss.CHASE
	sprite_index = spr_boss
	}
	
	
	
	
	
}




if(place_meeting(x,y,obj_player))
				 {
					 with (obj_player)
					 {	
						
							 if (isHit = false && iFrames = 0)
							 {
								PlayerHit(other.damage);
								
							 }
					 }
					 if (obj_player.iFrames = 0)
					 {
						 isAttacking = false;
					 }
				 }