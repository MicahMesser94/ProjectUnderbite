with (other)
{
	hp = hp - other.damage
	flash = 3;
	if state = BALLOONSTATE.IDLE
		{
			state = BALLOONSTATE.CHASE;
		}
	if other.knockback = true
	{
	hitfrom = other.direction
	//direction = hitfrom
	var dir_xx = lengthdir_x(10, hitfrom)
	var dir_yy = lengthdir_y(10, hitfrom)
	
	
	
		hsp = dir_xx
		vsp = dir_yy
		x += hsp
		y += vsp
		
	}
	

	
	
}

instance_destroy()