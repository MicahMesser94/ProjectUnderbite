/// @description Heatlh bar
// You can write your code in this editor

draw_sprite(spr_hBarBack,0,healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(spr_hBarBorder,0,healthbar_x, healthbar_y);
if (isReloading)
{
	reloadTime++
	draw_set_color(c_white);
	draw_rectangle(20,20,20+min(reloadTime,reloadDur),30, false);
	draw_rectangle(20,20,20+reloadDur,30,true)
	
}


//if global.gunState != GUNEQUIP.NONE
{
	scr_DrawSetText(c_white,Font2, fa_center, fa_top)
	draw_text(125,125,string(global.ammo[global.gunState]))
	draw_text(150,125,string(global.currentAmmo[global.gunState]))
	//draw_text (175,125,string(clipSize))
}

