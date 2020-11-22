///arg inventory slot
///arg gunequip
function scr_ItemSwitch()
{
		for (i = 0; i < global.maxItems; i += 1)
		{
			if (global.inventory[i] == argument0)// if slot "i" contains argument0
			{	
				
				instance_destroy(global.gunState)
				global.gunState = argument1
				instance_create_layer(x,y,"gun",global.gunState)
				return(1);//end script
			}
		}
return(0)

}