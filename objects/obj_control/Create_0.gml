/*
Intentory Items
0 = shotgun
1 = LMG
*/
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

