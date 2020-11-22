
function scr_scr_PlayerStateAttackSlash()
{
	//hsp = 0;
	//vsp = 0;
	//Start of the attack
	if (sprite_index != spr_attackSlash)
	{
		sprite_index = spr_attackSlash
		image_index = 0;
		ds_list_clear(hitByAttack)
	}
	mask_index = spr_attackSlash_HB
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,obj_enemy,hitByAttackNow,false)
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			//If this instance has not yet been hit by this attack
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack,hitID) == -1)
			{
				ds_list_add(hitByAttack,hitID);
				with (hitID)
				{
					hp -= 3;
					flash = true;
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = spr_player;
	if (scr_AnimationEnd())
	{
		sprite_index = spr_player
		state = PLAYERSTATE.FREE;
	}
}