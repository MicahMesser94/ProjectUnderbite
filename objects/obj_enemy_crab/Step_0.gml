/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if sprite_index = spr_eSpawn
{
	if animation_end()
	{
		sprite_index = spr_enemyW
	}
}

switch (state)
{
	case e_state.IDLE:
	{
		if (distance_to_object(obj_player.id) < 350) state = e_state.CHASE;
		
	}
	break;
	case e_state.CHASE:
	{
		if (obj_player.sprite_index != spr_playerRoll) 
		{
			dir = sign(obj_player.x - x);
			hsp = dir * walksp;
		}else if (distance_to_object(obj_player) < 50) hsp = 0;
		
		if(place_meeting(x,y,obj_player))
				 {
					 with (obj_player)
					 {	
						
							 if (isHit = false && iFrames = false)
							 {
								PlayerHit(other.damage);
								
							 }
					 }
					 if (obj_player.iFrames = false)
					 {
						 isAttacking = false;
					 }
				 }
		//if (distance_to_object (obj_player.id) > 300) state = e_state.IDLE;
		if (place_meeting(x+hsp,y,obj_wall))
		{
	
			while(!place_meeting(x+sign(hsp),y,obj_wall))
			{
				x = x + sign(hsp);
			}
			hsp = 0;
			vsp -= 0.35;
			
		}
		if (distance_to_object(obj_player) < 160 && canAttack = true && (obj_player.y) >= y-10)
		{
			alarm_set(0,25)
			hsp = 0;
			vsp = 0;
			state = e_state.ATTACK;
			attackFlash = 4;
			
		}
	}break;
	case e_state.ATTACK:
	{
		if(place_meeting(x,y,obj_player))
				 {
					 with (obj_player)
					 {	
						
							 if (isHit = false && iFrames = 0)
							 {
								PlayerHit(other.damage);
								
							 }
					 }
					 if (obj_player.iFrames = 0)
					 {
						 isAttacking = false;
						 state = e_state.CHASE
					 }
				 }


		
	}
}