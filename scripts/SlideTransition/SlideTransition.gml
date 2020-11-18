///@desc SlideTransition(mode, targetroom)
///@arg mode sets transition mode between next, restart, and goto.
///@arg targetroom sets target room when using the goto mode.

function SlideTransition()
{
	with(obj_control)
	{
		mode = argument[0];
		if (argument_count > 1) target = argument[1];
		
		

		
	}
	with(obj_player) 
	{
		hascontrol = true;
		
	}

}