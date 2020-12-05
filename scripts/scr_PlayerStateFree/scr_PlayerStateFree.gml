// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_PlayerStateFree(){
	//Calculate Movement
	var move = key_right - key_left;
	if (hascontrol)
	{
		hsp = move * walksp
	}
	vsp = vsp + grv;
	canJump -=1
	if (keyReload || global.ammo[global.gunState] = 0)
	{
		if (global.gunState!= GUNEQUIP.NONE && global.remainingAmmo[global.gunState] > 0)
		{
			isReloading = true;
		}
	}
	if (reloadTime == reloadDur)
	{
		global.remainingAmmo[global.gunState] += global.ammo[global.gunState]
		global.ammo[global.gunState] = min(clipSize[global.gunState], global.remainingAmmo[global.gunState])
		global.remainingAmmo[global.gunState] -= min(clipSize[global.gunState], global.remainingAmmo[global.gunState])
		isReloading = false;
		reloadTime = 0;
	}
	if (key_jump && canJump > 0)
		{
			audio_sound_pitch(snd_jump, choose(0.9,1.0,1.1,1.2))
			audio_play_sound(snd_jump,5,false);
			vsp = -5.5;
			isJumping = true;
			canJump = 0;
		}

	if (place_meeting(x,y+1,obj_wall))
	{	
		grounded = true;
		if (key_roll)
		{
			hascontrol = false
			sprite_index = spr_playerRoll
			if image_xscale > 0
			{
				hsp = 6
			
			} else
			{
				hsp = -6
			
			}
			
		}
	}else grounded = false;
	if (sprite_index = spr_playerRoll)
	{
		iFrames = true;
		if scr_AnimationEnd()
		{
			hascontrol = true;
			iFrames = false;
		}
	}
	if (sprite_index = spr_airDash)
	{
		iFrames = true;
		if scr_AnimationEnd()
		{
		
			hascontrol = true;
			iFrames = false;
		}
	}else grv = 0.3

	if hascontrol == false && isHit = true
	{
		sprite_index = spr_playerHit
	}

	if ((key_jumpHi) && vsp < 0 && isJumping = true)
	{
		vsp -= 0.17
	}
	//Horizontal Collision
	if (place_meeting(x+hsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	
	}

	x = x + hsp

	//Vertical Collision
	if (place_meeting(x,y+vsp,obj_wall))
	{
		while(!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y = y + sign(vsp);
		}
	
		if sprite_index = spr_playerHit
		{
			hascontrol = true;
			isHit = false;
		}
		vsp = 0;
		dashCount = 0
	
	
	
	}

	y = y + vsp


	//Animation

	if (!place_meeting(x,y+1,obj_wall))
	{
		if (hascontrol)
		{
			sprite_index = spr_playerJump;
				if (makeHat = false)
				{
					instance_create_layer(x,y,"gun",obj_hat)
				}
			

			makeHat = true;
		
			if (key_roll && dashCount = 0)
			{
				hascontrol = false
				dashCount = 1
				sprite_index = spr_airDash
				image_index = 0
				if image_xscale > 0
				{
					grv = 0;
					vsp = 0
					hsp = 6;
			
				} else
				{
					grv = 0;
					vsp = 0
					hsp = -6;
			
				}
			
			}
			/*
			if  image_index >= 8
			{
				image_speed = 0	
			}else image_speed = 1
			*/
		
		}
	
	
	
	
	}
	else
	{
		if (sprite_index == spr_playerJump)
		{
			audio_sound_pitch(snd_land, choose(0.5,1.0,1,2, 0.8))
			audio_play_sound(snd_land,5,false)
		
		}
		canJump = 7;
		isJumping = false;
		makeHat = false;
		image_speed = 1;
		if (hascontrol)
		{
			if (hsp == 0)
			{
				sprite_index = spr_player
			}
			else
			{
				sprite_index = spr_pWalking
		
			}
		}
	}

	if (hsp != 0) image_xscale = sign(hsp)
	if (keyAttack) state = PLAYERSTATE.ATTACK_SLASH;
	if (key_one) scr_ItemSwitch(0,GUNEQUIP.SHOTGUN);
	if (key_two) scr_ItemSwitch(1,GUNEQUIP.LMG);
}

