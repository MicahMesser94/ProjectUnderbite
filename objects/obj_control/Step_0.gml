/// @Progress the transition

if (mode!= TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.005))
	}
	else
	{
		percent = min(1,percent + max(((1 - percent)/10),0.005))
	}
	if (percent == 1) || (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
		
				scr_PathfindingGrid();
				
				break;
			}
			
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				mp_grid_destroy(global.grid);
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO();
				mp_grid_destroy(global.grid);
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				mp_grid_destroy(global.grid);
				game_restart();
				break;
			}
			
		}
	}
}