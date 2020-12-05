/// @description Heatlh bar
// You can write your code in this editor

draw_sprite(spr_hBarBack,0,healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(spr_hBarBorder,0,healthbar_x, healthbar_y);
//Reloading bar
if (isReloading)
{
	reloadTime++
	draw_set_color(c_white);
	draw_rectangle(115,100,115+min(reloadTime,reloadDur),110, false);
	draw_rectangle(115,100,115+reloadDur,110,true)
	
}


//if global.gunState != GUNEQUIP.NONE
{
	scr_DrawSetText(c_white,Font2, fa_center, fa_top)
	draw_text(125,75,string(global.ammo[global.gunState]))
	draw_text(150,75,string(global.remainingAmmo[global.gunState]))
	//draw_text (175,125,string(clipSize))
}

