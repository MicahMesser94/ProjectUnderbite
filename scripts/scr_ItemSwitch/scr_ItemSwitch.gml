///arg inventory slot
///arg gunequip
function scr_ItemSwitch()
{
		for (i = 0; i < global.maxItems; i += 1)
		{
			if (global.inventory[i] == argument0)// if slot "i" contains argument0
			{	
				
				instance_destroy(equipped)
				global.gunState = argument1
				switch(global.gunState)
				{
					case GUNEQUIP.NONE:
					{
						walksp = 6
						equipped = obj_hands
					}
					case GUNEQUIP.SHOTGUN:
					{
						walksp = 4;
						equipped = obj_gun
		
					}break;
					case GUNEQUIP.LMG: 
					{
						walksp = 3;
						equipped = obj_LMG
		
		
					}break;
				}

				instance_create_layer(x,y,"gun",equipped)
				//global.ammo[global.gunState] = clipSize[global.gunState]
				return(1);//end script
			}
		}
return(0)

}