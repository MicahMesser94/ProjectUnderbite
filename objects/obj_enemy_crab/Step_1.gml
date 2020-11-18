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

if sprite_index = spr_crabLunge && place_meeting(x,y+vsp, obj_wall)
{
	sprite_index = spr_enemyW
	state = e_state.CHASE
	isAttacking = false;
}
