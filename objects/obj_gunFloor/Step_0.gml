/// @description Insert description here
// You can write your code in this editor
if (equippable = true)
{
	sprite_index = spr_gunFloorS
	if (keyboard_check_pressed(ord("E")))
	{	
		instance_destroy(obj_player.equipped)
		global.gunState = GUNEQUIP.SHOTGUN
		instance_create_layer(obj_player.x,obj_player.y,"gun",obj_gun)
		global.ammo[global.gunState] = obj_player.clipSize[global.gunState]
		addgun = scr_ItemPickUp(GUNEQUIP.SHOTGUN);
		if (addgun != 0)
		{
			instance_destroy()
		}
		
	}
}else sprite_index = spr_gunFloor