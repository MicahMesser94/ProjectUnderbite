/// @description Update camera
// You can write your code in this editor


if (instance_exists(follow) && follow = obj_player)
{
	if (mouse_x > follow.x)
	{
		xTo = follow.x+100;
	}
	else
	if (mouse_x < follow.x)
	{
		xTo = follow.x-100;
	}
	
	yTo = follow.y;
	if ((follow).object_index == obj_playerDead)
	{
		x = xTo;
		y = yTo;
	}
}


//Update object position
x += (xTo - x) / 30;
y += (yTo - y) / 30;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half,);

if (layer_exists("Mountains"))
{
	layer_x("Mountains",x/2);
}
if (layer_exists("Trees"))
{
	layer_x("Trees",x/4);
}

//Screenshake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);
shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));
