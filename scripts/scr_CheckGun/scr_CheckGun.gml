// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_CheckGun(){
	
	switch(global.gunState)
	{
		case GUNEQUIP.NONE:
		{
			walksp = constWalkSp;
			equipped = obj_hands;
			break;
		}
		case GUNEQUIP.SHOTGUN:
		{
			walksp = round(constWalkSp * .4);
			equipped = obj_gun;
			break;
		}
		case GUNEQUIP.LMG: 
		{
			walksp = round(constWalkSp * .6);
			equipped = obj_LMG;
			break;
		}
		case GUNEQUIP.LASER:
		{
			walksp = round(constWalkSp * .5);;
			equipped = obj_laserPistol;
			break;
		}
		return(equipped)
	}

}