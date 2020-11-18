if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
	image_xscale = -1;
}
else
{
	image_yscale = 1;
}

if(place_meeting(x+1,y,obj_wall)) instance_destroy()