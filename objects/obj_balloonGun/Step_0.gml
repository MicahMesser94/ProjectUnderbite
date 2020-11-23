


x = x - lengthdir_x(mygun.recoil, mygun.image_angle);
y = y - lengthdir_y(mygun.recoil, mygun.image_angle);
if instance_exists(obj_player)
{
	switch (state)
	{
		case BALLOONSTATEGUN.IDLE:
		{
			if (place_meeting(x,y,obj_bullet))
			{
				state = BALLOONSTATEGUN.CHASE;
			}
	
			if ((distance_to_object(obj_player) < 600) && collision_line(x,y,obj_player.x,obj_player.y,obj_wall,1,0) < 1) 
			{
				state = BALLOONSTATEGUN.CHASE;
			}
			
			
		

		}
		break;
		case BALLOONSTATEGUN.CHASE:
		{
			
			var px = (obj_player.x div 32) * 32 + 16;
			var py = (obj_player.y div 32) * 32 + 16;
			if (mp_grid_path(global.grid, path, x,y, px, py, 1)) //&& //distance_to_object > 40)
			{
					path_start(path,spd,path_action_stop, false);
			}
			dir_x = sign(obj_player.x - x);
			dir_y = sign(obj_player.y - y);
			//sprite_index = spr_balloonM
			if (dir_x >= 0) image_xscale = -1
			else image_xscale = 1
			
			if (distance_to_object(obj_player) <= 300) 
			{
				spd = 0
				
			}else spd = 3;
		

		}
		break;/*
		case BALLOONSTATEGUN.SHOOT:
		{
			if (animation_end())
			{
				 if(place_meeting(x,y,obj_player))
				 {
					 with (obj_player)
					 {
						 if iFrames = false
						 {
							hp -= 0.3
							flash = 3;
						 }
					 }
				 }
				state = BALLOONSTATEGUN.CHASE;
			
			}
		}
		

		break;*/
	}

}
