/// @description Insert description here
// You can write your code in this editor
if (equippable = true)
{
	sprite_index = spr_LMGfloorS
	if (keyboard_check_pressed(ord("E")))
	{
		with (obj_gunParent)
		{
			ChangeWeapon(obj_LMGfloor.weapon)
			ammo[weapon] += 6;
		}
		/*
		if instance_exists(global.gunState)
		{
			instance_destroy(global.gunState)
		}
		obj_player.ammo = 6
		instance_create_layer(obj_player.x,obj_player.y,"gun",obj_gun)
		instance_destroy()
		*/
	}
}else sprite_index = spr_LMGfloor