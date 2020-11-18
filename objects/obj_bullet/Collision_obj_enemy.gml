/*with (other)
{
	 
	hp = hp - other.damage
	flash = 3;
	hitfrom = other.direction;
}
*/
with (other)
{
	
	hp = hp - other.damage
	flash = 3;
	instance_create_layer(other.x, other.y,"bullet",obj_blood)
	/*
	hitfrom = other.direction
	direction = hitfrom
	dir_xx = lengthdir_x(10, direction)
	dir_yy = lengthdir_y(10, direction)
	
		hsp = dir_xx
		vsp = dir_yy
		*/
	
}
instance_destroy()