/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (attackFlash > 0)
{
	attackFlash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}
if state = e_state.ATTACK
{
	draw_sprite(spr_exclaim,0,x,y-55)
}