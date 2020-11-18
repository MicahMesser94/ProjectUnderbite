//Get player input
if (hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	key_jumpHi = keyboard_check(vk_space);
	keyAttack = keyboard_check_pressed(ord("Q"))
	keyReload = keyboard_check_pressed(ord("R"))
	key_roll = keyboard_check_pressed(vk_lshift)
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	key_jumpHi = 0;
	keyAttack = 0;
	keyReload = 0;
	key_roll = 0;
	
}
show_debug_message(global.gunState)
iFrames = max(0, iFrames - 1)

switch(global.gunState)
{
	case GUNEQUIP.SHOTGUN:
	{
		walksp = 4;
		max_ammo = 6;
		
	}break;
	case GUNEQUIP.LMG: 
	{
		walksp = 3;
		max_ammo = 100;
		
	}break;
}
switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	//case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
}

