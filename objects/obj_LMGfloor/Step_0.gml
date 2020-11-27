/// @description Insert description here
// You can write your code in this editor
if (equippable = true)
{
	sprite_index = spr_LMGfloorS
	if (keyboard_check_pressed(ord("E")))
	{
		if instance_exists(global.gunState)
		{
			instance_destroy(global.gunState)
		}
		obj_player.ammo = 6
		instance_create_layer(obj_player.x,obj_player.y,"gun",obj_LMG)
		addgun = scr_ItemPickUp(1);
		if (addgun != 0)
		{
			instance_destroy()
		}
		
	}
}else sprite_index = spr_LMGfloor