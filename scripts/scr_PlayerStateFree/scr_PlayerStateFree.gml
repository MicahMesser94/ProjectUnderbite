// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_PlayerStateFree(){
	//Calculate Movement
	var move = player_right - player_left;
	if (hascontrol)
	{
		hsp = move * walksp
	}
	
	vsp = vsp + grv;
	canJump -=1
	if (player_reload || global.ammo[global.gunState] = 0)
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
	
	if (player_jump && canJump > 0)
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
		// Rolling
		if (player_roll)
		{
			hascontrol = false
			sprite_index = spr_playerRoll
			if (image_xscale > 0)
			{
				hsp = dashSpeed;
			} 
			else
			{
				hsp = -dashSpeed;
			}
			
		}
	}
	else 
	{
		grounded = false;
	}
	
	if (sprite_index = spr_playerRoll)
	{
		iFrames = true;
		if (scr_AnimationEnd())
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
	}
	else 
	{
		// why 0.3? make this a var or use a global
		grv = 0.3;
	}

	if hascontrol == false && isHit = true
	{
		sprite_index = spr_playerHit;
	}

	if ((player_jumpHi) && vsp < 0 && isJumping = true)
	{
		// make this a var or use a global
		vsp -= 0.17;
	}
	
	//Horizontal Collision
	if (place_meeting(x + hsp, y, obj_wall))
	{
		while(!place_meeting(x + sign(hsp), y, obj_wall))
		{
			x = x + sign(hsp);
		}
		
		hsp = 0;
	}

	// what does this do?
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
	
	// what does this do?
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
			// Midair Dash
			scr_PlayerDash();
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
	if (player_attack) state = PLAYERSTATE.ATTACK_SLASH;
	if (player_inventoryOne) scr_ItemSwitch(0,GUNEQUIP.SHOTGUN);
	if (player_inventoryTwo) scr_ItemSwitch(1,GUNEQUIP.LMG);
}

