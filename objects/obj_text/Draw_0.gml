/// @description Insert description here
// You can write your code in this editor

var halfw = w * 0.5;

draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,15,15,false);
draw_sprite(spr_marker,0,x,y);
draw_set_alpha(1);
draw_set_colour(c_white);
<<<<<<< HEAD
scr_DrawSetText(c_white,Font2, fa_center, fa_top);
draw_text(x+ 180,y, text_current);
=======
DrawSetText(c_white,Font2, fa_center, fa_top)
draw_text(x+ 180,y, text_current)
>>>>>>> 1179d14f8bc17da511d4be6104639ee7d2e9a090
