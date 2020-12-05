/*
Intentory Items
0 = shotgun
1 = LMG
2 = laser pistol
*/

global.debug = true;

//Size variables and mode setup
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
global.gunState = 0;
global.showInv = true;

global.maxItems = 5;

for (i = 0; i < global.maxItems; i +=1)
{
	global.inventory[i] = -1;
}

global.ammo[GUNEQUIP.SHOTGUN] = 6
global.ammo[GUNEQUIP.LMG] = 50
global.ammo[GUNEQUIP.LASER] = 6
global.remainingAmmo[GUNEQUIP.SHOTGUN] = 100
global.remainingAmmo[GUNEQUIP.LMG] = 500
global.remainingAmmo[GUNEQUIP.LASER] = 24