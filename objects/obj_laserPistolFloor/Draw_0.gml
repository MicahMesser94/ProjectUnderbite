/// @description Insert description here
// You can write your code in this editor
draw_self()

if (place_meeting(x,y,obj_player))
{
	draw_sprite(spr_interact, 0, x, y - 50)
	equippable = true;
}
else equippable = false;