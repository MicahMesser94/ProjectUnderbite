/// @Draw black bars
/*
draw_set_color(c_black);
draw_rectangle(0,0,w,75,false);
draw_rectangle(0,h,w,700,false);
*/

if (global.debug) {
	draw_set_colour(c_white);
	draw_text(150,150,"FPS: " + string(fps));
}



if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	//draw_rectangle(0,0,w,100,false);
	//draw_rectangle(0,h,w,0.8,false);
	draw_rectangle(0,0,w,percent*h_half,false)
	draw_rectangle(0,h,w,h-(percent*h_half), false);
}

draw_set_color(c_white);

if (global.showInv)
{
	var x1, x2, y1, y2;
	x1 = 0;
	x2 = 1500;
	y1 = 700;
	y2 = 800;
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1,y1,x2,y2,0);
	draw_set_alpha(1);
	
	for (i = 0; i < global.maxItems; i += 1)
	{
		draw_sprite(spr_itemBorder,0,x1+100+(i*100), y2 - 100)
		if (global.inventory[i] != -1)
		{
			draw_sprite(spr_items, global.inventory[i],x1+100+(i*100), y2 - 100)
		}
	}
	
}