


if instance_exists(obj_player)
{
	switch (state)
	{
		case BALLOONSTATE.IDLE:
		{
			if (place_meeting(x,y,obj_bullet))
			{
				state = BALLOONSTATE.CHASE;
			}
	
			if ((distance_to_object(obj_player) < 300) && collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,0) < 1) 
			{
				state = BALLOONSTATE.CHASE;
			}
			
			
		

		}
		break;
		case BALLOONSTATE.CHASE:
		{
			
			var px = (obj_player.x div 32) * 32 + 16;
			var py = (obj_player.y div 32) * 32 + 16;
			if (mp_grid_path(global.grid, path, x,y, px, py, 1)) //&& //distance_to_object > 40)
			{
					path_start(path,4,path_action_stop, false);
			}
			dir_x = sign(obj_player.x - x);
			dir_y = sign(obj_player.y - y);
			sprite_index = spr_balloonM
			if (dir_x >= 0) image_xscale = -1
			else image_xscale = 1
			if (distance_to_object(obj_player) < 40) 
			{
				state = BALLOONSTATE.ATTACK_SLASH
			}
		

		}
		break;
		case BALLOONSTATE.ATTACK_SLASH:
		{
			sprite_index = spr_balloonAttack
			if (scr_AnimationEnd())
			{
				 if(place_meeting(x,y,obj_player))
				 {
					 with (obj_player)
					 {
						 instance_create_layer(x,y,"gun",obj_blood)
						 if iFrames = false
						 {
							hp -= 0.3
							flash = 3;
						 }
					 }
				 }
				state = BALLOONSTATE.CHASE;
			
			}
		}
		

		break;
	}

}
