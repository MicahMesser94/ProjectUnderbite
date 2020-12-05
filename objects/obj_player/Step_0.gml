//Get player input
if (hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	key_jumpHi = keyboard_check(vk_space);
	keyAttack = keyboard_check_pressed(ord("Q"));
	keyReload = keyboard_check_pressed(ord("R"));
	key_roll = keyboard_check_pressed(vk_lshift);
	key_one = keyboard_check_pressed(ord("1"));
	key_two = keyboard_check_pressed(ord("2"));
	key_altFire = mouse_check_button(mb_right);
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
	key_one=0;
	key_two =0;
	
}
show_debug_message(equipped)


iFrames = max(0, iFrames - 1)


scr_CheckGun() // this returns the equipped object

switch(state)
{
	case PLAYERSTATE.FREE: 
	{
		scr_PlayerStateFree(); 
		break;
	}
	case PLAYERSTATE.ATTACK_SLASH:
	{
		scr_PlayerStateAttackSlash(); 
		break;
	}
	//case PLAYERSTATE.ATTACK_COMBO: scr_PlayerStateAttackCombo(); break;
}

