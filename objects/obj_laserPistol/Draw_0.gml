/// @description Insert description here
// You can write your code in this editor
draw_self()
if (charge > 1)
{
	draw_set_color(c_yellow);
	draw_rectangle(x-35,y-40,(x-35)+min(charge,chargeDur),y-50, false);
	draw_rectangle(x-35,y-40,(x-35)+chargeDur,y-50,true)
}