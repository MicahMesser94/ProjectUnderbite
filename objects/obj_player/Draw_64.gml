/// @description Heatlh bar
// You can write your code in this editor

draw_sprite(spr_hBarBack,0,healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(spr_hBarBorder,0,healthbar_x, healthbar_y);

draw_text(125,125,string(obj_player.ammo));

if (global.debug) {
	
	draw_set_colour(c_white);
	draw_text(160,175,"Walkspeed: " + string(walksp));
	if (global.gunState) {
		draw_text(160,195,"GunEquip: " + string(GUNEQUIP.LMG));
	}
	draw_text(160,195,"GunState: " + string(global.gunState));
}