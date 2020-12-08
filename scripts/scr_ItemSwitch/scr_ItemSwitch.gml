///arg button pressed
function scr_ItemSwitch()
{
	i = argument0
			//if (global.inventory[i] == argument0)// if slot "i" contains argument0
		//	{	
				
				instance_destroy(equipped)
				if (global.inventory[i] != -1)
				{
					global.gunState = global.inventory[i]
					scr_CheckGun()
					instance_create_layer(x,y,"gun",equipped)
				//global.ammo[global.gunState] = clipSize[global.gunState]
				return(1);//end script
				}
				
				
			//}
		//}
	/*
		for (i = 0; i < global.maxItems; i += 1)
		{
			if (global.inventory[i] == argument0)// if slot "i" contains argument0
			{	
				
				instance_destroy(equipped)
				global.gunState = argument1
				scr_CheckGun();

				instance_create_layer(x,y,"gun",equipped)
				//global.ammo[global.gunState] = clipSize[global.gunState]
				return(1);//end script
			}
		}
return(0)
*/
return 0
}