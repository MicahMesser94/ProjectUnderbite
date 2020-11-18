/// @description Insert description here
// You can write your code in this editor
if animation_end() 
{
	with (obj_enemy_boss)
	{
		state = e_stateBoss.CHASE;
		isAttacking = false;
		sprite_index = spr_boss
	}
	instance_destroy()
}