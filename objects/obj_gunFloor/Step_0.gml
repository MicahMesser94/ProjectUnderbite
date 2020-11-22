/// @description Insert description here
// You can write your code in this editor
if (equippable = true)
{
	sprite_index = spr_gunFloorS
	if (keyboard_check_pressed(ord("E")))
	{
		with (obj_gunParent)
		{
			ChangeWeapon(obj_gunFloor.weapon)
			clipsize = 6
			ammo += clipsize
		
		}
		/*
		if instance_exists(global.gunState)
		{
			instance_destroy(global.gunState)
		}
		obj_player.ammo = 6
		instance_create_layer(obj_player.x,obj_player.y,"gun",obj_gun)
<<<<<<< Updated upstream
		instance_destroy()
		*/
=======
		addgun = scr_ItemPickUp(0);
		if (addgun != 0)
		{
			instance_destroy()
		}
		
>>>>>>> Stashed changes
	}
}else sprite_index = spr_gunFloor