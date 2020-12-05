
///arg bulletcount
function scr_SpreadShot(){

	
	with (instance_create_layer(x,y,"bullet",obj_bullet))
	{
		speed = 5
		if (argument0 < 2)
		{
			direction = other.image_angle -(argument0*7.5)
		}
		else
		{
			direction = other.image_angle + (argument0*7.5)
		}
		image_angle = direction;
		image_index = 0
		
	}

}