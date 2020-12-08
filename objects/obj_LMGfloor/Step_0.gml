/// @description Insert description here
// You can write your code in this editor
if (equippable = true)
{
	sprite_index = spr_LMGfloorS
	if (keyboard_check_pressed(ord("E")))
	{	
		instance_destroy(obj_player.equipped)
		//obj_player.ammo = 6
		instance_create_layer(obj_player.x,obj_player.y,"gun",obj_LMG)
		global.gunState = GUNEQUIP.LMG;
		global.ammo[global.gunState] = obj_player.clipSize[global.gunState]
		addgun = scr_ItemPickUp(GUNEQUIP.LMG);
		if (addgun != 0)
		{
			instance_destroy()
		}
		
	}
}else sprite_index = spr_LMGfloor