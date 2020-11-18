/// @description Insert description here
// You can write your code in this editor
if state != e_stateBoss.IDLE
{
	draw_sprite(spr_hBarBackBoss,0,healthbar_x, healthbar_y);
	draw_sprite_stretched(spr_healthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height);
	draw_sprite(spr_hBarBorderBoss,0,healthbar_x, healthbar_y);
}