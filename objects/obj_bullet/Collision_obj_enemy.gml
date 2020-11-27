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
	//direction = other.direction	
	//hsp = lengthdir_x(10, direction)
	//vsp = lengthdir_y(10, direction)
		
	
}
instance_destroy()