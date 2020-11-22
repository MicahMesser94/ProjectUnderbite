/// @description Move to next room

with (obj_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		scr_SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}
