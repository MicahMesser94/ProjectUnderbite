/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


enum e_stateBoss
{
	IDLE,
	CHASE,
	ATTACK,
	STUNNED
}
state = e_stateBoss.IDLE
attackFlash = 0;
canAttack = true;
isAttacking = false;
damage = 3;
distance = 0
dir = sign(obj_player.x - x)
stunned = 0;
hp = 100;
hp_max = hp
healthbar_width = 1200
healthbar_height = 24
healthbar_x = 100
healthbar_y = 720