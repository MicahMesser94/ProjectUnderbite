/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
sprite_index = spr_eSpawn

enum e_state
{
	IDLE,
	CHASE,
	ATTACK
}
state = e_state.IDLE
attackFlash = 0;
canAttack = true;
isAttacking = false;
damage = 3;