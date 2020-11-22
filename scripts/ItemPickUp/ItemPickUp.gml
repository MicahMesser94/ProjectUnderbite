// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ItemPickUp()
{
	for (i = 0; i < global.maxItems; i += 1)
		{
			if (global.inventory[i] == -1)// if slot "i" is empty
			{
				global.inventory[i] = argument0
				return(1);//end script
			}
		}
return(0)
}
