// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScreenShake()
{
	with (obj_camera)
	{
		if(argument0 > shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = shakeMagnitude;
			shakeLength = argument1;
		}
	}

}