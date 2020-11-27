/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if sprite_index = spr_bossJump
{
	if scr_AnimationEnd()
	{
		image_speed = 0
	}
} else image_speed = 1

image_xscale = -sign(dir) //(obj_player.x > x) image_xscale = -image_xscale;
distance = max(0, distance - 1)
switch (state)
{
	case e_stateBoss.IDLE:
	{
		if (distance_to_object(obj_player.id) < 350) state = e_stateBoss.CHASE;
		
	}
	break;
	case e_stateBoss.CHASE:
	{
		
		if (obj_player.sprite_index != spr_playerRoll && isAttacking = false) 
		{
			
			dir = sign(obj_player.x - x);
			hsp = dir * walksp;
		}else if (distance_to_object(obj_player) < 50) hsp = 0;
		if (distance_to_object(obj_player) <= 20 && isAttacking = false)
		{
			distance = 0;
			state = e_stateBoss.ATTACK
		}
		
		//if (distance_to_object (obj_player.id) > 300) state = e_state.IDLE;
		if (place_meeting(x+hsp,y,obj_wall))
		{
	
			while(!place_meeting(x+sign(hsp),y,obj_wall))
			{
				x = x + sign(hsp);
			}
			hsp = 0;
			//vsp -= 0.35;
			
		}
		if (distance_to_object(obj_player) < 400 && canAttack = true) //&& (obj_player.y) >= y-10)
		{
			
			if (obj_player.y) <= y-20 && obj_player.grounded = true
			{
				alarm_set(0,60)
			}
			else alarm_set(choose(0,2,3),60)
			
			isAttacking = true;
			if alarm_get(0) > 0
			{
				sprite_index = spr_bossCrouch;
			}
			if alarm_get(2) > 0
			{
				sprite_index = spr_bossGunCharge;
			}
			if alarm_get(3) > 0
			{
				sprite_index = spr_bossMeleeCharge;
			}
				
			hsp = 0;
			vsp = 0;
			attackFlash = 4;
			canAttack = false;
			dir = sign(obj_player.x - x);
			
		}
	}break;
	case e_stateBoss.ATTACK:
	{
			
			if (sprite_index = spr_bossMelee && scr_AnimationEnd())
			{	
				sprite_index = spr_boss;
				isAttacking = false;
				
				mask_index = spr_boss
				distance = 60
				state = e_stateBoss.CHASE
			}
		if (distance <= 0)
		{
			sprite_index = spr_bossMelee
			hsp = 0
			mask_index = spr_bossMelee
			
		}
		if (place_meeting(x+hsp,y,obj_wall) && distance!= 0 )
		{
			
			stunned = 100;
			ScreenShake(7,80)
			state = e_stateBoss.STUNNED
			
			
			
		}


		
	}break;
	case e_stateBoss.STUNNED:
	{
		hsp = 0
		stunned--
		sprite_index = spr_bossStunned
		isAttacking = false;
	
		if stunned <= 0 
		{
			sprite_index = spr_boss
			state = e_stateBoss.CHASE;
		}
	}break;
}

