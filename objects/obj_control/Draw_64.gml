/// @Draw black bars
/*
draw_set_color(c_black);
draw_rectangle(0,0,w,75,false);
draw_rectangle(0,h,w,700,false);
*/
if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	//draw_rectangle(0,0,w,100,false);
	//draw_rectangle(0,h,w,0.8,false);
	draw_rectangle(0,0,w,percent*h_half,false)
	draw_rectangle(0,h,w,h-(percent*h_half), false);
}

draw_set_color(c_white);

