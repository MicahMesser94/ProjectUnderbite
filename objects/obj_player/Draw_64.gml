/// @description Heatlh bar
// You can write your code in this editor

draw_sprite(spr_hBarBack,0,healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(spr_hBarBorder,0,healthbar_x, healthbar_y);

draw_text(125,125,string(obj_player.ammo))
