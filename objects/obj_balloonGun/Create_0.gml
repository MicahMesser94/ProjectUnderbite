/// @description Insert description here
// You can write your code in this editor

if (hasWeapon)
{
	mygun = instance_create_layer(x,y, "gun", obj_enemyGun)
	with(mygun)
	{
		owner = other.id
		other.mygun = id
	}
}
else mygun = noone;

enum BALLOONSTATEGUN
{
	IDLE,
	CHASE,
	SHOOT
}
state = BALLOONSTATEGUN.IDLE
vsp = 0;
hsp = 0;
walksp = 2
dir_x = 0
//dir_xx = 0
dir_y = 0
//dir_yy = 0
flash = 0
hp = 4
hitfrom = 0
hasWeapon = true;
recoil = 0;

//hitByAttack = ds_list_create();
//create path
path = path_add();
spd = 3