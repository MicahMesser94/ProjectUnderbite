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
				//Create pathfinding grid
				var cell_width = 32;
				var cell_height = 32;

				var hcells = room_width div cell_width
				var vcells = room_height div cell_height;

				global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

				//Add walls
				mp_grid_add_instances(global.grid,obj_wall, false);
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