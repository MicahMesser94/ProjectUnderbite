/// @description Insert description here
// You can write your code in this editor
draw_self()

if (flash > 0)
{
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}

//if (global.debug) {
//	draw_set_colour(c_white);
//	draw_text(160,160,"Walk Speed: " + string(walksp))
//}