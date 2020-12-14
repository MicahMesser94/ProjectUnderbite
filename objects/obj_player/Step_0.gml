//Get player input
if (hascontrol)
{
	// Add all new PlayerActions in the scipt, and add them to the Disble script as well
	scr_PlayerActionCheck();
	
}
else
{
	scr_PlayerActionDisable();
	
	
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

